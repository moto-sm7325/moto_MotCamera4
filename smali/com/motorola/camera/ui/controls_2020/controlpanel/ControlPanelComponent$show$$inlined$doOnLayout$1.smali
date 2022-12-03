.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$show$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnNextLayout$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ControlPanelComponent.kt\ncom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent\n*L\n1#1,411:1\n70#2:412\n71#2:425\n147#3,12:413\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$show$$inlined$doOnLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string/jumbo p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$show$$inlined$doOnLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    .line 3
    iget-boolean p2, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->controlPanelOpen:Z

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->rotation:F

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$show$$inlined$doOnLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    .line 8
    iget-boolean p3, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->needControlPanelUpdate:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 9
    iput-boolean p3, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->interceptUpdate:Z

    .line 10
    iput-boolean p3, p1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->needControlPanelUpdate:Z

    .line 11
    invoke-virtual {p1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->updateRecyclerViewAsync()V

    .line 12
    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$show$$inlined$doOnLayout$1;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    const/4 p1, 0x1

    const/4 p3, 0x0

    .line 13
    invoke-virtual {p0, p2, p1, p3}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->animateVisibility(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_0
    return-void
.end method
