.class public final synthetic Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$com$google$android$exoplayer2$extractor$ogg$OggExtractor$$InternalSyntheticLambda$6$533c2fdf624c3d0a6b65ddbc8637a4c0561568bb449d9165808077274869943c$0:Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$extractor$ogg$OggExtractor$$InternalSyntheticLambda$6$533c2fdf624c3d0a6b65ddbc8637a4c0561568bb449d9165808077274869943c$0:Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/exoplayer2/video/ColorInfo$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 4

    .line 1
    new-instance p0, Lcom/google/android/exoplayer2/video/ColorInfo;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    .line 4
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    .line 5
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/ColorInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    return-object p0
.end method
