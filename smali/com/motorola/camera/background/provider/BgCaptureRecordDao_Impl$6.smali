.class public Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$6;
.super Landroidx/room/SharedSQLiteStatement;
.source "BgCaptureRecordDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE bgCaptureRecord_table SET thumbnailData = ?, thumbnailUpdateTime = ? WHERE id = ?"

    return-object p0
.end method
