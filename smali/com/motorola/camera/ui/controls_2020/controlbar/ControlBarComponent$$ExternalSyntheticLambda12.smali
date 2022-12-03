.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;ZI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;->f$1:Z

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v4, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;->PADDING_ANIMATION:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    .line 5
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v1

    move v6, p0

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;IZLkotlin/jvm/functions/Function0;)V

    :goto_0
    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    .line 8
    :goto_1
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda10;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    .line 9
    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda12;->f$1:Z

    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggleState(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
