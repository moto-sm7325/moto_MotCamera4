.class public final synthetic Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$com$google$android$exoplayer2$extractor$ts$Ac4Extractor$$InternalSyntheticLambda$6$196d78d38bb9f817e020a1233352bae587326864a0f6ff110dbf90efdff5643b$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->INSTANCE$com$google$android$exoplayer2$extractor$ts$Ac4Extractor$$InternalSyntheticLambda$6$196d78d38bb9f817e020a1233352bae587326864a0f6ff110dbf90efdff5643b$0:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/detector/MLKitBarcodeDetector$$ExternalSyntheticLambda0;

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
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    const-string p0, "MLKitBarcodeDetector"

    const-string v0, "Failed to detect barcode: "

    .line 1
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
