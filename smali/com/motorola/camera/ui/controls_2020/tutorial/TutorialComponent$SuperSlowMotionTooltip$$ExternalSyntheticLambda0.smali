.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const-string/jumbo p2, "this$0"

    .line 1
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$1"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->updateLocation()V

    .line 3
    sget-object p2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->INFLATION_STATES:Ljava/util/List;

    .line 4
    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float p0, p0

    .line 5
    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->rotate(F)V

    return-void
.end method
