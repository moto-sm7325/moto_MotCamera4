.class public final Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
.super Ljava/lang/Object;
.source "AudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioFormat"
.end annotation


# static fields
.field public static final NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;-><init>(III)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget p0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 p0, 0x3

    if-eq p3, p0, :cond_1

    const/4 p0, 0x2

    if-eq p3, p0, :cond_1

    const/high16 p0, 0x10000000

    if-eq p3, p0, :cond_1

    const/high16 p0, 0x20000000

    if-eq p3, p0, :cond_1

    const/high16 p0, 0x30000000

    if-eq p3, p0, :cond_1

    const/4 p0, 0x4

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    .line 3
    invoke-static {p3, p2}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    :cond_2
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "AudioFormat[sampleRate=-1, channelCount=-1, encoding=-1]"

    return-object p0
.end method
