.class public final Landroidx/core/graphics/drawable/DrawableKt;
.super Ljava/lang/Object;
.source "Drawable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,82:1\n38#2:83\n49#2:84\n60#2:85\n71#2:86\n*S KotlinDebug\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n*L\n58#1:83\n58#1:84\n58#1:85\n58#1:86\n*E\n"
.end annotation


# direct methods
.method public static toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 5

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    :cond_0
    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 3
    :cond_1
    instance-of p3, p0, Landroid/graphics/drawable/BitmapDrawable;

    const-string p4, "bitmap"

    if-eqz p3, :cond_3

    .line 4
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result p3

    if-ne p1, p3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result p3

    if-ne p2, p3, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "createScaledBitmap(bitmap, width, height, true)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    const-string v0, "bounds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 9
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 10
    iget v2, p3, Landroid/graphics/Rect;->right:I

    .line 11
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 12
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    .line 13
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p0, v0, v1, v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    invoke-static {v3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v3

    :goto_0
    return-object p0
.end method
