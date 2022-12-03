.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$6:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$6:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    .line 1
    sget-object p0, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getScore(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    sget-object p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 1
    iget-object p0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string p1, "OMX.google"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "c2.android"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_1

    const-string p1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
