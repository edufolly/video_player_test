# video_player_test

Video Player Test

## Crash Log

After changing the stream 9 times.

```
I/flutter ( 2181): http://ebctvnbr-rtmp.adaptive.level3.net/egress/bhandler/ebcremuxlive/tvnbr/manifest.m3u8
I/ExoPlayerImpl( 2181): Init 2798e55 [ExoPlayerLib/2.9.1] [victara, XT1097, motorola, 23]
I/MediaCodec( 2181): name=OMX.qcom.video.decoder.avc isType=false encoder=false
I/OMXClient( 2181): Using client-side OMX mux.
W/ACodec  ( 2181): Allocating component 'OMX.qcom.video.decoder.avc' failed, try next one.
E/ACodec  ( 2181): Unable to instantiate codec 'OMX.qcom.video.decoder.avc' with err 0xfffffff4.
E/ACodec  ( 2181): signalError(omxError 0xfffffff4, internalError -12)
E/MediaCodec( 2181): Codec reported err 0xfffffff4, actionCode 0, while in state 1
W/MediaCodec-JNI( 2181): try to release MediaCodec from JMediaCodec::~JMediaCodec()...
W/MediaCodec-JNI( 2181): done releasing MediaCodec from JMediaCodec::~JMediaCodec().
W/MediaCodecRenderer( 2181): Failed to initialize decoder: OMX.qcom.video.decoder.avc
W/MediaCodecRenderer( 2181): android.media.MediaCodec$CodecException: Failed to initialize OMX.qcom.video.decoder.avc, error 0xfffffff4
W/MediaCodecRenderer( 2181): 	at android.media.MediaCodec.native_setup(Native Method)
W/MediaCodecRenderer( 2181): 	at android.media.MediaCodec.<init>(MediaCodec.java:1677)
W/MediaCodecRenderer( 2181): 	at android.media.MediaCodec.createByCodecName(MediaCodec.java:1656)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.initCodec(MediaCodecRenderer.java:802)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.initCodecWithFallback(MediaCodecRenderer.java:745)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.maybeInitCodec(MediaCodecRenderer.java:474)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.reinitializeCodec(MediaCodecRenderer.java:1261)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.onInputFormatChanged(MediaCodecRenderer.java:1111)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.video.MediaCodecVideoRenderer.onInputFormatChanged(MediaCodecVideoRenderer.java:552)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.render(MediaCodecRenderer.java:647)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.ExoPlayerImplInternal.doSomeWork(ExoPlayerImplInternal.java:536)
W/MediaCodecRenderer( 2181): 	at com.google.android.exoplayer2.ExoPlayerImplInternal.handleMessage(ExoPlayerImplInternal.java:303)
W/MediaCodecRenderer( 2181): 	at android.os.Handler.dispatchMessage(Handler.java:98)
W/MediaCodecRenderer( 2181): 	at android.os.Looper.loop(Looper.java:148)
W/MediaCodecRenderer( 2181): 	at android.os.HandlerThread.run(HandlerThread.java:61)
E/ExoPlayerImplInternal( 2181): Playback error.
E/ExoPlayerImplInternal( 2181): com.google.android.exoplayer2.ExoPlaybackException: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException: Decoder init failed: OMX.qcom.video.decoder.avc, Format(0, null, null, video/avc, avc1.42C01F, 544768, null, [1280, 720, -1.0], [-1, -1])
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.maybeInitCodec(MediaCodecRenderer.java:479)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.reinitializeCodec(MediaCodecRenderer.java:1261)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.onInputFormatChanged(MediaCodecRenderer.java:1111)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.video.MediaCodecVideoRenderer.onInputFormatChanged(MediaCodecVideoRenderer.java:552)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.render(MediaCodecRenderer.java:647)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.ExoPlayerImplInternal.doSomeWork(ExoPlayerImplInternal.java:536)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.ExoPlayerImplInternal.handleMessage(ExoPlayerImplInternal.java:303)
E/ExoPlayerImplInternal( 2181): 	at android.os.Handler.dispatchMessage(Handler.java:98)
E/ExoPlayerImplInternal( 2181): 	at android.os.Looper.loop(Looper.java:148)
E/ExoPlayerImplInternal( 2181): 	at android.os.HandlerThread.run(HandlerThread.java:61)
E/ExoPlayerImplInternal( 2181): Caused by: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer$DecoderInitializationException: Decoder init failed: OMX.qcom.video.decoder.avc, Format(0, null, null, video/avc, avc1.42C01F, 544768, null, [1280, 720, -1.0], [-1, -1])
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.initCodecWithFallback(MediaCodecRenderer.java:753)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.maybeInitCodec(MediaCodecRenderer.java:474)
E/ExoPlayerImplInternal( 2181): 	... 9 more
E/ExoPlayerImplInternal( 2181): Caused by: android.media.MediaCodec$CodecException: Failed to initialize OMX.qcom.video.decoder.avc, error 0xfffffff4
E/ExoPlayerImplInternal( 2181): 	at android.media.MediaCodec.native_setup(Native Method)
E/ExoPlayerImplInternal( 2181): 	at android.media.MediaCodec.<init>(MediaCodec.java:1677)
E/ExoPlayerImplInternal( 2181): 	at android.media.MediaCodec.createByCodecName(MediaCodec.java:1656)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.initCodec(MediaCodecRenderer.java:802)
E/ExoPlayerImplInternal( 2181): 	at com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.initCodecWithFallback(MediaCodecRenderer.java:745)
E/ExoPlayerImplInternal( 2181): 	... 10 more
```