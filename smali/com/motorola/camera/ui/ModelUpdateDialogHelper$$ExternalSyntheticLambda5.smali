.class public final synthetic Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Lcom/google/android/exoplayer2/util/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;

.field public static final synthetic INSTANCE$com$google$android$exoplayer2$source$SampleQueue$$InternalSyntheticLambda$5$d68af3ba0a22779389eff20cd5e3155e6ab5f6c697d50d588c67146be131eff3$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;->INSTANCE$com$google$android$exoplayer2$source$SampleQueue$$InternalSyntheticLambda$5$d68af3ba0a22779389eff20cd5e3155e6ab5f6c697d50d588c67146be131eff3$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;

    new-instance v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda5;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;

    .line 1
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionManager$DrmSessionReference;->release()V

    return-void
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 0

    return-void
.end method
