.class public Landroidx/core/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateConstructorForUtilityClass"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/ContextCompat$Api23Impl;,
        Landroidx/core/content/ContextCompat$Api21Impl;,
        Landroidx/core/content/ContextCompat$Api19Impl;,
        Landroidx/core/content/ContextCompat$Api16Impl;
    }
.end annotation


# static fields
.field public static final sLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    .line 2
    new-instance v1, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    invoke-direct {v1, v0, p0}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 3
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4
    :try_start_0
    sget-object v3, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 6
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    if-eqz v5, :cond_1

    .line 7
    iget-object v6, v5, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8
    iget-object v3, v5, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mValue:Landroid/content/res/ColorStateList;

    monitor-exit v2

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_3

    .line 11
    :cond_2
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/TypedValue;

    if-nez v3, :cond_3

    .line 12
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 15
    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_4

    const/16 v5, 0x1f

    if-gt v3, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 17
    :try_start_1
    invoke-static {v0, v2, p0}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "ResourcesCompat"

    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    .line 18
    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v4, :cond_7

    .line 19
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 20
    :try_start_2
    sget-object p0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_6

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 22
    invoke-virtual {p0, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_6
    new-instance p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    iget-object v1, v1, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    .line 24
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V

    .line 25
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26
    monitor-exit v2

    move-object v3, v4

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 27
    :cond_7
    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_3
    return-object v3

    :catchall_1
    move-exception p0

    .line 28
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
