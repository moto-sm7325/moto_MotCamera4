.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ControlBarComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->animateLayoutChange(Landroidx/recyclerview/widget/RecyclerView;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$AnimationType;IZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $animationTimeSlice:J

.field public final synthetic $recycler:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic $updateControlBarBlock:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function0;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;J)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$updateControlBarBlock:Lkotlin/jvm/functions/Function0;

    iput-wide p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$animationTimeSlice:J

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$recycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$updateControlBarBlock:Lkotlin/jvm/functions/Function0;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$animateLayoutChange$1$1;->$animationTimeSlice:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
