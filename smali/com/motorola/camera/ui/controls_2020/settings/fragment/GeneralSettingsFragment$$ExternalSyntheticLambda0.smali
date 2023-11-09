.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    sget v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->$r8$clinit:I

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 3
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v0, 0x7f1100f6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    .line 6
    new-instance v4, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$2;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$resetDialogClickListener$1$2;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;)V

    check-cast p1, Lkotlinx/coroutines/JobSupport;

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
