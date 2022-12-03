.class public final Lcom/google/common/collect/Lists;
.super Ljava/lang/Object;
.source "Lists.java"


# direct methods
.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    move-object v1, p0

    check-cast v1, Lcom/google/common/collect/AbstractIterator;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/common/collect/AbstractIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
