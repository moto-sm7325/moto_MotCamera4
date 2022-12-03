.class public final Landroidx/window/layout/SidecarCompat$TranslatingCallback;
.super Ljava/lang/Object;
.source "SidecarCompat.kt"

# interfaces
.implements Landroidx/window/sidecar/SidecarInterface$SidecarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/SidecarCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslatingCallback"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidecarCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidecarCompat.kt\nandroidx/window/layout/SidecarCompat$TranslatingCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,478:1\n1849#2:479\n1850#2:481\n1#3:480\n*S KotlinDebug\n*F\n+ 1 SidecarCompat.kt\nandroidx/window/layout/SidecarCompat$TranslatingCallback\n*L\n337#1:479\n337#1:481\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/window/layout/SidecarCompat;


# direct methods
.method public constructor <init>(Landroidx/window/layout/SidecarCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceStateChanged(Landroidx/window/sidecar/SidecarDeviceState;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    const-string v0, "newDeviceState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 2
    iget-object v0, v0, Landroidx/window/layout/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_2
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    if-nez v3, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    iget-object v4, p0, Landroidx/window/layout/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v4, :cond_4

    goto :goto_3

    .line 7
    :cond_4
    invoke-interface {v4, v3}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    move-result-object v2

    .line 8
    :goto_3
    iget-object v3, p0, Landroidx/window/layout/SidecarCompat;->extensionCallback:Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    if-nez v3, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    iget-object v4, p0, Landroidx/window/layout/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/SidecarAdapter;

    .line 10
    invoke-virtual {v4, v2, p1}, Landroidx/window/layout/SidecarAdapter;->translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v2

    .line 11
    invoke-interface {v3, v1, v2}, Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public onWindowLayoutChanged(Landroid/os/IBinder;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    const-string/jumbo v0, "windowToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 2
    iget-object v0, v0, Landroidx/window/layout/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    const-string p0, "SidecarCompat"

    const-string p1, "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 6
    iget-object v1, v0, Landroidx/window/layout/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/SidecarAdapter;

    .line 7
    iget-object v0, v0, Landroidx/window/layout/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 9
    :cond_2
    invoke-virtual {v1, p2, v0}, Landroidx/window/layout/SidecarAdapter;->translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p2

    .line 10
    iget-object p0, p0, Landroidx/window/layout/SidecarCompat$TranslatingCallback;->this$0:Landroidx/window/layout/SidecarCompat;

    .line 11
    iget-object p0, p0, Landroidx/window/layout/SidecarCompat;->extensionCallback:Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;

    if-nez p0, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {p0, p1, p2}, Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    :goto_1
    return-void
.end method
