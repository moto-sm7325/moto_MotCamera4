.class public Lcom/adobe/xmp/impl/xpath/PathPosition;
.super Ljava/lang/Object;


# instance fields
.field public nameEnd:I

.field public nameStart:I

.field public path:Ljava/lang/Object;

.field public stepBegin:I

.field public stepEnd:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 5
    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    const/16 p1, 0x10

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 7
    iput p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast v1, [I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/PathPosition;->doubleArraySize()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 4
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast v1, [I

    aput p1, v1, v0

    .line 5
    iget p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    return-void
.end method

.method public doubleArraySize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    .line 2
    new-array v1, v1, [I

    .line 3
    move-object v2, v0

    check-cast v2, [I

    array-length v2, v2

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    sub-int/2addr v2, v3

    .line 4
    check-cast v0, [I

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput v4, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 7
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 8
    iput-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    .line 9
    check-cast v1, [I

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public remove()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/Object;

    check-cast v1, [I

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 3
    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    return v1

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
