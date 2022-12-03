.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SuperSlowMotionActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuperSlowMotionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuperSlowMotionActivity.kt\ncom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1\n+ 2 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt\n*L\n1#1,391:1\n72#2,3:392\n*S KotlinDebug\n*F\n+ 1 SuperSlowMotionActivity.kt\ncom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1\n*L\n193#1:392,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.motorola.camera.superslowmotion.SuperSlowMotionActivity$onCreate$15$1"
    f = "SuperSlowMotionActivity.kt"
    l = {
        0x188
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1
    iget v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-virtual {p1, v1}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    check-cast p1, Landroidx/window/layout/WindowInfoTrackerImpl;

    invoke-virtual {p1, v1}, Landroidx/window/layout/WindowInfoTrackerImpl;->windowLayoutInfo(Landroid/app/Activity;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    .line 7
    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1$invokeSuspend$$inlined$collect$1;

    invoke-direct {v3, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1$invokeSuspend$$inlined$collect$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V

    iput v2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$15$1;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
