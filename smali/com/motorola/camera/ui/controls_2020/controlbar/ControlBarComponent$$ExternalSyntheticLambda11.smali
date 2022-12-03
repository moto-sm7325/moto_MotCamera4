.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;Ljava/util/List;ZI)V
    .locals 0

    iput p5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$2:Ljava/util/List;

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$3:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/util/List;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$2:Ljava/util/List;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iput-boolean p4, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->$r8$classId:I

    const-string v2, "$newList"

    const-string v3, "$animationType"

    const-string/jumbo v4, "this$0"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$2:Ljava/util/List;

    iget-object v7, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iget-boolean v9, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$3:Z

    .line 1
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->adapter:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;

    const/4 v10, 0x2

    move-object v5, v2

    move-object v8, v1

    invoke-direct/range {v5 .. v10}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;Ljava/util/List;ZI)V

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 3
    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object v13, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$2:Ljava/util/List;

    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$3:Z

    .line 4
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v12, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v12, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;

    invoke-direct {v2, v1, v5, v0, v12}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$updateItems$2$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;Ljava/util/List;ZLandroidx/recyclerview/widget/RecyclerView;)V

    move-object v11, v1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;IZLkotlin/jvm/functions/Function0;)V

    .line 7
    :goto_1
    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_2
    return-void

    .line 9
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;

    iget-object v6, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$2:Ljava/util/List;

    iget-boolean v0, v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda11;->f$3:Z

    .line 10
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v7, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->pendingAnimationEndCallback:Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x0

    .line 12
    iput-object v2, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->pendingAnimationEndCallback:Lkotlin/jvm/functions/Function0;

    .line 13
    iget-object v8, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v8, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x0

    move-object v2, v1

    move-object v3, v8

    move-object v4, v5

    move v5, v6

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;IZLkotlin/jvm/functions/Function0;)V

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-wide/16 v2, 0x0

    .line 16
    iput-wide v2, v0, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->mChangeDuration:J

    .line 17
    :cond_5
    :goto_3
    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez v0, :cond_6

    .line 18
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/RotationAwareComponent;->show()V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
