.class public final synthetic Lcom/google/android/exoplayer2/video/VideoSize$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE$com$google$android$exoplayer2$extractor$ts$Ac3Extractor$$InternalSyntheticLambda$6$645736a38c4ade93276a8cf861716207c4bf181fee0b2164d539c39e1fc9abe4$0:Lcom/google/android/exoplayer2/video/VideoSize$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/video/VideoSize$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/VideoSize$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/google/android/exoplayer2/video/VideoSize$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$extractor$ts$Ac3Extractor$$InternalSyntheticLambda$6$645736a38c4ade93276a8cf861716207c4bf181fee0b2164d539c39e1fc9abe4$0:Lcom/google/android/exoplayer2/video/VideoSize$$ExternalSyntheticLambda0;

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
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 4

    const/4 p0, 0x0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/video/VideoSize;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/VideoSize;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    .line 3
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/VideoSize;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x3

    .line 5
    invoke-static {v2}, Lcom/google/android/exoplayer2/video/VideoSize;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 7
    new-instance v2, Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/google/android/exoplayer2/video/VideoSize;-><init>(IIIF)V

    return-object v2
.end method
