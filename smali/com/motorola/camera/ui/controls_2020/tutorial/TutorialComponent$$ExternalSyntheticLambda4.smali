.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;


# direct methods
.method public synthetic constructor <init>(ZZLcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda4;->f$0:Z

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda4;->f$1:Z

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda4;->f$2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda4;->f$0:Z

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda4;->f$1:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda4;->f$2:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const-string/jumbo v2, "this$0"

    .line 1
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_CONTINUE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->updateViews(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->setTooltipIndex(I)V

    .line 4
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;->SCREEN_FIRST_USE:Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->updateViews(Lcom/motorola/camera/ui/controls_2020/tutorial/ScreenConfig;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->isPhotoScreen:Z

    .line 6
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    return-void
.end method
