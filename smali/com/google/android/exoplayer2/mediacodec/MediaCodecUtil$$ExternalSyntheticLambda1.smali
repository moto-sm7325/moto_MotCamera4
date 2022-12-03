.class public final synthetic Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$ScoreProvider;
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

.field public static final synthetic INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$8:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;->INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$8:Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda1;

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

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getScore(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    sget-object p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 1
    iget-object p0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string p1, "OMX.google"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
