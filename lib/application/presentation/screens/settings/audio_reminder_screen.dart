import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:bechdu_partner/data/secure_storage/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SoundItem {
  final String id;
  final String title;
  final String fileName;
  final String assetPath;

  const SoundItem({
    required this.id,
    required this.title,
    required this.fileName,
    required this.assetPath,
  });
}

class ScreenAudioReminder extends StatefulWidget {
  const ScreenAudioReminder({super.key});

  @override
  State<ScreenAudioReminder> createState() => _ScreenAudioReminderState();
}

class _ScreenAudioReminderState extends State<ScreenAudioReminder> {
  static const List<SoundItem> _soundList = [
    SoundItem(
      id: 'order_alarm',
      title: 'Order Alarm (Default)',
      fileName: 'order_alarm.mp3',
      assetPath: 'sounds/order_alarm.mp3',
    ),
    SoundItem(
      id: 'order_alarm_1',
      title: 'Order Alarm 1',
      fileName: 'order_alarm_1.mp3',
      assetPath: 'sounds/order_alarm_1.mp3',
    ),
    SoundItem(
      id: 'order_alarm_2',
      title: 'Order Alarm 2',
      fileName: 'order_alarm_2.mp3',
      assetPath: 'sounds/order_alarm_2.mp3',
    ),
    SoundItem(
      id: 'order_alarm_3',
      title: 'Order Alarm 3',
      fileName: 'order_alarm_3.mp3',
      assetPath: 'sounds/order_alarm_3.mp3',
    ),
    SoundItem(
      id: 'order_alarm_4',
      title: 'Order Alarm 4',
      fileName: 'order_alarm_4.mp3',
      assetPath: 'sounds/order_alarm_4.mp3',
    ),
    SoundItem(
      id: 'order_alarm_5',
      title: 'Order Alarm 5',
      fileName: 'order_alarm_5.mp3',
      assetPath: 'sounds/order_alarm_5.mp3',
    ),
  ];

  late final AudioPlayer _audioPlayer;
  String _selectedSoundId = SharedPref.defaultOrderSound;
  String? _currentlyPlayingId;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer.onPlayerComplete.listen((_) {
      if (mounted) {
        setState(() {
          _currentlyPlayingId = null;
        });
      }
    });
    _loadSavedSound();
  }

  Future<void> _loadSavedSound() async {
    try {
      final savedSound = await SharedPref.getOrderSound();
      if (mounted) {
        setState(() {
          _selectedSoundId =
              savedSound.isNotEmpty ? savedSound : SharedPref.defaultOrderSound;
          _isLoading = false;
        });
      }
    } catch (e) {
      log('Error loading saved order sound: $e');
      if (mounted) {
        setState(() {
          _selectedSoundId = SharedPref.defaultOrderSound;
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _togglePlaySound(SoundItem sound) async {
    try {
      if (_currentlyPlayingId == sound.id) {
        await _audioPlayer.stop();
        if (mounted) {
          setState(() {
            _currentlyPlayingId = null;
          });
        }
      } else {
        await _audioPlayer.stop();
        await _audioPlayer.play(AssetSource(sound.assetPath));
        if (mounted) {
          setState(() {
            _currentlyPlayingId = sound.id;
          });
        }
      }
    } catch (e) {
      log('Error playing sound ${sound.fileName}: $e');
      if (mounted) {
        setState(() {
          _currentlyPlayingId = null;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Could not play ${sound.fileName}'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }

  Future<void> _selectSound(SoundItem sound) async {
    setState(() {
      _selectedSoundId = sound.id;
    });
    await SharedPref.setOrderSound(sound: sound.id);

    // Play the sound on selection so user hears it
    await _togglePlaySound(sound);

    if (mounted) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: kGreenPrimary,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
          content: Text(
            '${sound.title} set as reminder sound',
            style: const TextStyle(color: kWhite),
          ),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  void dispose() {
    _audioPlayer.stop();
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Reminder', style: textHeadBoldBig2),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(color: kGreenPrimary),
            )
          : ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: kGreenPrimary.withAlpha(20),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: kGreenPrimary.withAlpha(60),
                    ),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18.r,
                        backgroundColor: kGreenPrimary.withAlpha(35),
                        child: const Icon(
                          Icons.notifications_active_outlined,
                          color: kGreenPrimary,
                          size: 20,
                        ),
                      ),
                      kWidth10,
                      Expanded(
                        child: Text(
                          'Choose the reminder sound for new orders. Tap the speaker icon to preview.',
                          style: textHeadRegular1.copyWith(
                            color: kGreyDark,
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                kHeight20,
                ..._soundList.map((sound) {
                  final bool isSelected = _selectedSoundId == sound.id;
                  final bool isPlaying = _currentlyPlayingId == sound.id;

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: isSelected ? kGreenPrimary.withAlpha(15) : kWhite,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: isSelected
                            ? kGreenPrimary
                            : kGreyLight.withAlpha(90),
                        width: isSelected ? 1.5 : 1.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(8),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 4,
                      ),
                      leading: InkWell(
                        borderRadius: BorderRadius.circular(24.r),
                        onTap: () => _togglePlaySound(sound),
                        child: Container(
                          width: 44.w,
                          height: 44.w,
                          decoration: BoxDecoration(
                            color: isPlaying
                                ? kGreenPrimary
                                : kGreenPrimary.withAlpha(30),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            isPlaying
                                ? Icons.stop_rounded
                                : Icons.volume_up_rounded,
                            color: isPlaying ? kWhite : kGreenPrimary,
                            size: 24.sp,
                          ),
                        ),
                      ),
                      title: Text(
                        sound.title,
                        style: textHeadMedium1.copyWith(
                          color: isSelected ? kGreenPrimary : Colors.black,
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.w500,
                        ),
                      ),
                      // subtitle: Text(
                      //   sound.fileName,
                      //   style: textHeadRegular1.copyWith(
                      //     color: kGreyDark,
                      //     fontSize: 12.sp,
                      //   ),
                      // ),
                      trailing: Container(
                        width: 22.w,
                        height: 22.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isSelected ? kGreenPrimary : kGreyLight,
                            width: 2,
                          ),
                        ),
                        child: isSelected
                            ? Center(
                                child: Container(
                                  width: 12.w,
                                  height: 12.w,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kGreenPrimary,
                                  ),
                                ),
                              )
                            : null,
                      ),
                      onTap: () => _selectSound(sound),
                    ),
                  );
                }),
              ],
            ),
    );
  }
}
