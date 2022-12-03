.class public Landroidx/room/RoomMasterTable;
.super Ljava/lang/Object;
.source "RoomMasterTable.java"


# direct methods
.method public static final getProgressionLastElement(III)I
    .locals 1

    if-lez p2, :cond_1

    if-lt p0, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1, p2}, Landroidx/room/RoomMasterTable;->mod(II)I

    move-result v0

    invoke-static {p0, p2}, Landroidx/room/RoomMasterTable;->mod(II)I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0, p2}, Landroidx/room/RoomMasterTable;->mod(II)I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_1
    if-gez p2, :cond_3

    if-gt p0, p1, :cond_2

    goto :goto_0

    :cond_2
    neg-int p2, p2

    .line 2
    invoke-static {p0, p2}, Landroidx/room/RoomMasterTable;->mod(II)I

    move-result p0

    invoke-static {p1, p2}, Landroidx/room/RoomMasterTable;->mod(II)I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p0, p2}, Landroidx/room/RoomMasterTable;->mod(II)I

    move-result p0

    add-int/2addr p1, p0

    :goto_0
    return p1

    .line 3
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    return p0
.end method

.method public static final mod(II)I
    .locals 0

    .line 1
    rem-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method public static final mod(JJ)J
    .locals 2

    .line 2
    rem-long/2addr p0, p2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr p0, p2

    :goto_0
    return-wide p0
.end method
