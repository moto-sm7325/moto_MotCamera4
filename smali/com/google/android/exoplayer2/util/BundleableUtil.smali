.class public final Lcom/google/android/exoplayer2/util/BundleableUtil;
.super Ljava/lang/Object;
.source "BundleableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p0, v3}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    .line 8
    array-length v5, v0

    if-ge v5, v4, :cond_0

    .line 9
    array-length v5, v0

    .line 10
    invoke-static {v5, v4}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 11
    :cond_0
    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v0, v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public static fromNullableBundle(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Bundleable;

    .line 3
    invoke-interface {v1}, Lcom/google/android/exoplayer2/Bundleable;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toNullableBundle(Lcom/google/android/exoplayer2/Bundleable;)Landroid/os/Bundle;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Bundleable;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    :goto_0
    return-object p0
.end method
