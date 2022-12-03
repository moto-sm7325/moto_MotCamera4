.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;->f$1:F

    iput-boolean p3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;->f$1:F

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda4;->f$2:Z

    const-string/jumbo v2, "this$0"

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int v2, v1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 4
    :goto_0
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->modePillGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    float-to-int v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->captureBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    float-to-int v1, v1

    invoke-static {v0, v1, p0}, Lcom/motorola/camera/utility/AppExtensionsKt;->animatedSetGuidelineBegin(Landroidx/constraintlayout/widget/Guideline;IZ)V

    :goto_1
    return-void
.end method
