.class public Lcom/adobe/xmp/impl/xpath/XMPPath;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/motorola/camera/analytics/Attributes/iAttribute;


# instance fields
.field public final synthetic $r8$classId:I

.field public segments:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V
    .locals 0

    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .locals 0

    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    return-object p0
.end method

.method public record(Landroid/os/Bundle;Lcom/google/android/gms/common/api/internal/zaz;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p2, Lcom/google/android/gms/common/api/internal/zaz;->zaa:Ljava/lang/Object;

    check-cast v1, [B

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/zaz;->zab:Ljava/lang/Object;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->record(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    return-void

    :catchall_0
    move-exception p0

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public record(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/XMPPath;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object v3

    .line 2
    iget v3, v3, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->kind:I

    if-eq v3, v1, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :cond_0
    const/16 v3, 0x2f

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
