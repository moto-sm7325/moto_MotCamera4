.class public final synthetic Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$4:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;->INSTANCE$com$motorola$camera$superslowmotion$SuperSlowMotionViewModel$$InternalSyntheticLambda$1$3236f353a3b14fc830cabf8b08a10995674a874512edaee69ded6ee46aa86a84$4:Lcom/google/android/exoplayer2/extractor/wav/WavExtractor$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_0
    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 p1, 0x0

    .line 2
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method
