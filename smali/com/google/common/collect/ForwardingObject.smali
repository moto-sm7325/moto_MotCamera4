.class public abstract Lcom/google/common/collect/ForwardingObject;
.super Ljava/lang/Object;
.source "ForwardingObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;

    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
