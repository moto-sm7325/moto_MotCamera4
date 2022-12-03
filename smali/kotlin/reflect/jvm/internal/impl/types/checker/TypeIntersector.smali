.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;
.super Ljava/lang/Object;
.source "IntersectionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntersectionType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntersectionType.kt\norg/jetbrains/kotlin/types/checker/TypeIntersector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1547#2:181\n1618#2,2:182\n1620#2:185\n1783#2,3:186\n1618#2,3:189\n1741#2,3:192\n1#3:184\n*S KotlinDebug\n*F\n+ 1 IntersectionType.kt\norg/jetbrains/kotlin/types/checker/TypeIntersector\n*L\n78#1:181\n78#1:182,2\n78#1:185\n85#1:186,3\n96#1:189,3\n134#1:192,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filterTypes(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "filteredTypes.iterator()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eq v4, v0, :cond_3

    const-string v5, "lower"

    .line 7
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "upper"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final intersectTypes$descriptors(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 4
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    instance-of v5, v5, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v5

    const-string/jumbo v6, "type.constructor.supertypes"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 8
    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v8, "it"

    .line 9
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v4}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v7

    :cond_0
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_3
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->START:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 14
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->combine(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    move-result-object v2

    goto :goto_2

    .line 15
    :cond_4
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "<this>"

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 18
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    if-ne v2, v8, :cond_6

    .line 19
    instance-of v8, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    if-eqz v8, :cond_5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    .line 20
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    .line 22
    iget-object v9, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->captureStatus:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    .line 23
    iget-object v10, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->constructor:Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    .line 24
    iget-object v11, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->lowerType:Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 25
    iget-object v12, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->annotations:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 26
    iget-boolean v13, v5, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->isMarkedNullable:Z

    const/4 v14, 0x1

    move-object v8, v7

    .line 27
    invoke-direct/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;ZZ)V

    move-object v5, v7

    .line 28
    :cond_5
    invoke-static {v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeSimpleTypeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    .line 29
    :cond_6
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 30
    :cond_7
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v4, :cond_8

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    goto/16 :goto_7

    .line 31
    :cond_8
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->filterTypes(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;

    move-result-object v1

    .line 32
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    move-object v4, v5

    goto/16 :goto_6

    .line 34
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 37
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v4, :cond_d

    if-nez v8, :cond_a

    goto :goto_5

    .line 39
    :cond_a
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v9

    .line 40
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v10

    .line 41
    instance-of v11, v9, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;

    if-eqz v11, :cond_b

    instance-of v12, v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;

    if-eqz v12, :cond_b

    .line 42
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;

    .line 43
    iget-object v4, v9, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;->possibleTypes:Ljava/util/Set;

    iget-object v8, v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;->possibleTypes:Ljava/util/Set;

    .line 44
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "other"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v15

    .line 46
    invoke-static {v15, v8}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 47
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;

    .line 48
    iget-wide v12, v9, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;->value:J

    .line 49
    iget-object v14, v9, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;->module:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    const/16 v16, 0x0

    move-object v11, v4

    .line 50
    invoke-direct/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;-><init>(JLkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    sget v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->$r8$clinit:I

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->EMPTY:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-static {v8, v4, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->integerLiteralType(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    goto :goto_4

    :cond_b
    if-eqz v11, :cond_c

    .line 52
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;

    .line 53
    iget-object v4, v9, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;->possibleTypes:Ljava/util/Set;

    .line 54
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v4, v8

    goto :goto_4

    .line 55
    :cond_c
    instance-of v8, v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;

    if-eqz v8, :cond_d

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;

    .line 56
    iget-object v8, v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;->possibleTypes:Ljava/util/Set;

    .line 57
    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_4

    :cond_d
    :goto_5
    move-object v4, v5

    goto :goto_4

    .line 58
    :cond_e
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    :goto_6
    if-nez v4, :cond_10

    .line 59
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->Default:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    .line 61
    invoke-direct {v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->filterTypes(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;

    move-result-object v0

    .line 62
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_f

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    goto :goto_7

    .line 64
    :cond_f
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    goto :goto_7

    :cond_10
    move-object v0, v4

    :goto_7
    return-object v0

    .line 65
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
