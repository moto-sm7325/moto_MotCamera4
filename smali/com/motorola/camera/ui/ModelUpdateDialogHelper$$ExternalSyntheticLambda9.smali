.class public final synthetic Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Lcom/motorola/camera/fsm/camera/iFsmBuilder;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;

.field public static final synthetic INSTANCE$com$motorola$camera$fsm$camera$states$CameraFsmFactory$$InternalSyntheticLambda$2$82175e12fdacaaae10157a1050a3e8554100079b6b4d849ec0637f0dd46ec485$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;->INSTANCE$com$motorola$camera$fsm$camera$states$CameraFsmFactory$$InternalSyntheticLambda$2$82175e12fdacaaae10157a1050a3e8554100079b6b4d849ec0637f0dd46ec485$0:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;

    new-instance v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;->INSTANCE:Lcom/motorola/camera/ui/ModelUpdateDialogHelper$$ExternalSyntheticLambda9;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {p1, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
