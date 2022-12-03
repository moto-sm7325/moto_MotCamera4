.class public final Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;
.super Ljava/lang/Object;
.source "SceneDetectionPillComponent.kt"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOtherComponentVisible:Z

    .line 3
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->isOtherComponentVisible:Z

    .line 7
    iget-object v1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent$otherComponentsVisibilityListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/SceneDetectionPillComponent;->updateVisibility()V

    :goto_1
    return-void
.end method
