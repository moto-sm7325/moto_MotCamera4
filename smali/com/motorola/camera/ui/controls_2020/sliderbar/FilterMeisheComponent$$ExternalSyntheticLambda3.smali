.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    check-cast p1, Ljava/util/List;

    const-string/jumbo v0, "this$0"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->filtersRecycler:Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheRecyclerView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;

    .line 4
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->effects:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "filterList"

    .line 6
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "list"

    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->effects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    goto/16 :goto_2

    .line 11
    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->effects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->effects:Ljava/util/ArrayList;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 15
    check-cast v4, Landroid/util/Pair;

    .line 16
    new-instance v5, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v7, v4}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    goto :goto_2

    .line 18
    :cond_4
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheAdapter;->effects:Ljava/util/ArrayList;

    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 21
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 22
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 23
    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 24
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->updateFilterVisibility()V

    :cond_8
    :goto_3
    return-void
.end method
