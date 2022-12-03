.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WaterMarkPreferencesFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;->$r8$clinit:I

    const-string v1, "Job didn\'t complete, cause: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "WaterMarkPreferencesFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 4
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 5
    invoke-virtual {p1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2$2;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2;->this$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment$onCreatePreferences$2$2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/WaterMarkPreferencesFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 6
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
