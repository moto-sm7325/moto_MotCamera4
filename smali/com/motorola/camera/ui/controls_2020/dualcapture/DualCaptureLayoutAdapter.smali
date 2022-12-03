.class public Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DualCaptureLayoutAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDualCaptureLayoutAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DualCaptureLayoutAdapter.kt\ncom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1547#2:138\n1618#2,3:139\n1849#2:142\n221#2,2:143\n1850#2:145\n*S KotlinDebug\n*F\n+ 1 DualCaptureLayoutAdapter.kt\ncom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter\n*L\n82#1:138\n82#1:139,3\n88#1:142\n89#1:143,2\n88#1:145\n*E\n"
.end annotation


# instance fields
.field public layoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/Bitmap;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public selectedLayout:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->selectedLayout:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->index:Ljava/lang/Integer;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->selectedLayout:Landroidx/lifecycle/MutableLiveData;

    .line 6
    iput-object v0, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->selected:Landroidx/lifecycle/LiveData;

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "layoutList[position]"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/Triple;

    .line 13
    iget-object p2, p0, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 14
    check-cast p2, Ljava/lang/String;

    const-string v0, "name"

    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p2, p0, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 18
    check-cast p2, Landroidx/lifecycle/LiveData;

    .line 19
    iput-object p2, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->bitmap:Landroidx/lifecycle/LiveData;

    .line 20
    iget-object p0, p0, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 21
    check-cast p0, Landroidx/lifecycle/LiveData;

    .line 22
    iput-object p0, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->selectedBitmap:Landroidx/lifecycle/LiveData;

    .line 23
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->selected:Landroidx/lifecycle/LiveData;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->selectedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p0, "parent"

    .line 1
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0d006a

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;

    const-string p2, "layout"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;

    const-string p0, "holder"

    .line 2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->selected:Landroidx/lifecycle/LiveData;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutViewHolder;->selectedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public final setSelectedLayout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->selectedLayout:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
