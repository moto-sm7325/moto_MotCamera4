.class public final Landroidx/window/layout/WindowInfoTracker$Companion;
.super Ljava/lang/Object;
.source "WindowInfoTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/WindowInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInfoTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInfoTracker.kt\nandroidx/window/layout/WindowInfoTracker$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,116:1\n1#2:117\n*E\n"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

.field public static decorator:Landroidx/window/layout/WindowInfoTrackerDecorator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-direct {v0}, Landroidx/window/layout/WindowInfoTracker$Companion;-><init>()V

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->$$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

    .line 1
    const-class v0, Landroidx/window/layout/WindowInfoTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 2
    sget-object v0, Landroidx/window/layout/EmptyDecorator;->INSTANCE:Landroidx/window/layout/EmptyDecorator;

    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Landroidx/window/layout/WindowInfoTrackerDecorator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;
    .locals 6

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl;

    .line 2
    sget-object v1, Landroidx/window/layout/WindowMetricsCalculatorCompat;->INSTANCE:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->INSTANCE:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-virtual {v3}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v4, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;

    invoke-direct {v4, v3}, Landroidx/window/layout/ExtensionWindowLayoutInfoBackend;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :goto_0
    move-object v4, v2

    :goto_1
    if-nez v4, :cond_7

    .line 6
    sget-object v3, Landroidx/window/layout/SidecarWindowBackend;->Companion:Landroidx/window/layout/SidecarWindowBackend;

    .line 7
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v3, Landroidx/window/layout/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/SidecarWindowBackend;

    if-nez v3, :cond_6

    .line 9
    sget-object v3, Landroidx/window/layout/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 11
    :try_start_1
    sget-object v4, Landroidx/window/layout/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/SidecarWindowBackend;

    if-nez v4, :cond_5

    .line 12
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 13
    :try_start_2
    invoke-static {}, Landroidx/window/layout/SidecarCompat;->getSidecarVersion()Landroidx/window/core/Version;

    move-result-object p0

    const/4 v4, 0x0

    if-nez p0, :cond_1

    goto :goto_2

    .line 14
    :cond_1
    sget-object v5, Landroidx/window/core/Version;->Companion:Landroidx/window/core/Version$Companion;

    .line 15
    sget-object v5, Landroidx/window/core/Version;->VERSION_0_1:Landroidx/window/core/Version;

    .line 16
    invoke-virtual {p0, v5}, Landroidx/window/core/Version;->compareTo(Landroidx/window/core/Version;)I

    move-result p0

    if-ltz p0, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_2
    if-eqz v4, :cond_4

    .line 17
    new-instance p0, Landroidx/window/layout/SidecarCompat;

    invoke-direct {p0, p1}, Landroidx/window/layout/SidecarCompat;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Landroidx/window/layout/SidecarCompat;->validateExtensionInterface()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, p0

    .line 19
    :catchall_1
    :cond_4
    :goto_3
    :try_start_3
    sget-object p0, Landroidx/window/layout/SidecarWindowBackend;->Companion:Landroidx/window/layout/SidecarWindowBackend;

    new-instance p0, Landroidx/window/layout/SidecarWindowBackend;

    invoke-direct {p0, v2}, Landroidx/window/layout/SidecarWindowBackend;-><init>(Landroidx/window/layout/ExtensionInterfaceCompat;)V

    .line 20
    sput-object p0, Landroidx/window/layout/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/SidecarWindowBackend;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    .line 22
    :cond_6
    :goto_4
    sget-object v4, Landroidx/window/layout/SidecarWindowBackend;->globalInstance:Landroidx/window/layout/SidecarWindowBackend;

    .line 23
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    :cond_7
    invoke-direct {v0, v1, v4}, Landroidx/window/layout/WindowInfoTrackerImpl;-><init>(Landroidx/window/layout/WindowMetricsCalculator;Landroidx/window/layout/WindowBackend;)V

    .line 25
    sget-object p0, Landroidx/window/layout/WindowInfoTracker$Companion;->decorator:Landroidx/window/layout/WindowInfoTrackerDecorator;

    check-cast p0, Landroidx/window/layout/EmptyDecorator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "tracker"

    .line 26
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
