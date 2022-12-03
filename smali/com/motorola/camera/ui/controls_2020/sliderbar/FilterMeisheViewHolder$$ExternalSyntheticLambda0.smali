.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;

    check-cast p1, Landroid/graphics/Bitmap;

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder;->imageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewHolder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->layoutRecycler:Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutRecyclerView;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;

    const-string v1, "layoutList"

    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    goto/16 :goto_3

    .line 12
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Lkotlin/Triple;

    .line 17
    new-instance v4, Lkotlin/Triple;

    .line 18
    iget-object v5, v3, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 19
    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    .line 20
    iget-object v7, v3, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 21
    invoke-direct {v6, v7}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    new-instance v7, Landroidx/lifecycle/MutableLiveData;

    .line 22
    iget-object v3, v3, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 23
    invoke-direct {v7, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    goto :goto_3

    .line 26
    :cond_4
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    .line 27
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Triple;

    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Triple;

    .line 29
    iget-object v5, v4, Lkotlin/Triple;->first:Ljava/lang/Object;

    iget-object v6, v2, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 30
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 31
    iget-object v3, v2, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 32
    check-cast v3, Landroidx/lifecycle/MutableLiveData;

    .line 33
    iget-object v5, v4, Lkotlin/Triple;->second:Ljava/lang/Object;

    .line 34
    invoke-virtual {v3, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 35
    iget-object v2, v2, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 36
    check-cast v2, Landroidx/lifecycle/MutableLiveData;

    .line 37
    iget-object v3, v4, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 38
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 39
    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_7
    :goto_3
    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutAdapter;->layoutList:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/dualcapture/DualCaptureLayoutSelectComponent;->updateLayoutVisibility()V

    :cond_8
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
