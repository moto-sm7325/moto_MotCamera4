.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomTooltip$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TutorialComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTutorialComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TutorialComponent.kt\ncom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomTooltip$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1152:1\n1#2:1153\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomTooltip$2;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomTooltip$2;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomTooltip$2;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$zoomTooltip$2;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$ZoomTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V

    :goto_2
    return-object v1
.end method
