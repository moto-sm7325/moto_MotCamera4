.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method public constructor <init>([Landroidx/lifecycle/GeneratedAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(ILcom/google/android/gms/common/api/zad$$IA$1;)V

    .line 2
    iget-object v2, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 3
    invoke-interface {v6, p1, p2, v4, v0}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLkotlin/jvm/internal/SpreadBuilder;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->mGeneratedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    array-length v2, p0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v3, p0, v4

    .line 5
    invoke-interface {v3, p1, p2, v1, v0}, Landroidx/lifecycle/GeneratedAdapter;->callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLkotlin/jvm/internal/SpreadBuilder;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
