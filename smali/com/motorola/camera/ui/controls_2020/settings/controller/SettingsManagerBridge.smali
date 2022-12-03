.class public final Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;
.super Ljava/lang/Object;
.source "SettingsManagerBridge.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsManagerBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsManagerBridge.kt\ncom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

.field public job:Lkotlinx/coroutines/Job;

.field public final resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/motorola/camera/settings/Setting<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public shouldSkipUpdatePreference:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->fragment:Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;

    .line 2
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/List;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 5
    invoke-static {v0, p1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "keyName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lcom/motorola/camera/settings/PersistBehavior;->getKeyNameWithoutSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$result$1;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->resultList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 6
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;->job:Lkotlinx/coroutines/Job;

    invoke-virtual {v1, v2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;

    invoke-direct {v6, v0, p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$onSharedPreferenceChanged$2;-><init>(Lkotlinx/coroutines/Deferred;Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge;Lcom/motorola/camera/settings/SettingsManager$Key;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v1

    throw p0
.end method
