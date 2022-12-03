.class public final synthetic Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE$com$google$android$exoplayer2$extractor$ts$PsExtractor$$InternalSyntheticLambda$6$a39baac00718e5f724fbf24294b92e696035ae5c550f03aa436ed5b5d89a25df$0:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$extractor$ts$PsExtractor$$InternalSyntheticLambda$6$a39baac00718e5f724fbf24294b92e696035ae5c550f03aa436ed5b5d89a25df$0:Landroidx/core/view/ViewCompat$$ExternalSyntheticLambda0;

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
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method
