.class public final Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;
.super Ljava/lang/Object;
.source "StaticManager.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private mIsStaticOffline:Z

.field private mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

.field private mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "staticOffLine"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 44
    new-instance p2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 46
    new-instance p2, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-direct {p2}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    .line 51
    new-instance p2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    invoke-direct {p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;-><init>()V

    iput-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    .line 52
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$checkIfGetStaticComplete(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getMIsStaticOffline$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    return p0
.end method

.method public static final synthetic access$getMStaticHelper$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    return-object p0
.end method

.method public static final synthetic access$handleAndroidVersionFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$handleFaqFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$handleGetAndroidFileOnError(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetAndroidFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$setCallback$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setMIsStaticOffline$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    return-void
.end method

.method public static final synthetic access$setMStaticHelper$p(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    return-void
.end method

.method private final checkIfGetStaticComplete()V
    .locals 2

    .line 498
    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMAndroidKeys()Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMutualStaticData()Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMTextDictionary()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMSideMenuData()Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMAndroidVersion()Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ideomobile/hapoalim/data/StaticDataManager;->INSTANCE:Lcom/ideomobile/hapoalim/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/data/StaticDataManager;->getMBlackListPhones()Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method private final getAndroidFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidFilesFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;",
            ">;"
        }
    .end annotation

    .line 372
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026dStaticData::class.java))"

    const-string v3, "android.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidStaticData;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getAndroidVersionFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;",
            ">;"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidVersion()Lio/reactivex/Single;

    move-result-object v0

    .line 344
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidVersionFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getAndroidVersionFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;",
            ">;"
        }
    .end annotation

    .line 400
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026roidVersion::class.java))"

    const-string v3, "android_version.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/AndroidVersion;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getBlackListFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteBlackListPhones()Lio/reactivex/Single;

    move-result-object v0

    .line 354
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getBlackListFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getBlackListFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;",
            ">;"
        }
    .end annotation

    .line 407
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026kListPhones::class.java))"

    const-string v3, "black_list_phones.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/android/BlackListPhones;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getFirstFromStorage(Landroid/content/Context;)V
    .locals 6

    .line 425
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 428
    :cond_0
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetMutualFileOnError(Landroid/content/Context;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 430
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 431
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 432
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$mutual$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$mutual$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 437
    sget-object v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$mutual$2;->INSTANCE:Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$mutual$2;

    .line 432
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 441
    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v1, :cond_1

    .line 442
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_1

    .line 444
    :cond_1
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V

    .line 445
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    .line 446
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 447
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 448
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$dict$1;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$dict$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 453
    sget-object v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$dict$2;->INSTANCE:Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$dict$2;

    .line 448
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 457
    iget-boolean v2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v2, :cond_2

    .line 458
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    goto :goto_2

    .line 460
    :cond_2
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError(Landroid/content/Context;)V

    .line 461
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    .line 462
    :goto_2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 463
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 464
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$sideMenu$1;

    invoke-direct {v3, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$sideMenu$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 469
    sget-object v4, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$sideMenu$2;->INSTANCE:Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$sideMenu$2;

    .line 464
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 473
    iget-boolean v3, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v3, :cond_3

    .line 474
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_3

    .line 476
    :cond_3
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->handleBlackListFileOnError(Landroid/content/Context;)V

    .line 477
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 478
    :goto_3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 479
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 480
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$blackList$1;

    invoke-direct {v3, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$blackList$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 485
    sget-object v4, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$blackList$2;->INSTANCE:Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getFirstFromStorage$blackList$2;

    .line 480
    invoke-virtual {p1, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 488
    iget-object v3, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v4, 0x4

    new-array v4, v4, [Lio/reactivex/disposables/Disposable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object p1, v4, v0

    invoke-virtual {v3, v4}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/FaqItem;",
            ">;"
        }
    .end annotation

    .line 386
    const-class v0, Lcom/ideomobile/hapoalim/model/FaqItem;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026me, FaqItem::class.java))"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/ideomobile/hapoalim/model/FaqItem;

    :cond_0
    invoke-static {v3}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, p2, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/ideomobile/hapoalim/model/FaqItem;

    :cond_2
    invoke-static {v3}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static synthetic getGeneralFaqByFileName$default(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 258
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFaqByFileName(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final getGeneralFaqFilesFromServer(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/FaqItem;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteGeneralFaqFilesData(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqFilesFromServer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualDictFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualDictData()Lio/reactivex/Single;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualDictFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualDictFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;",
            ">;"
        }
    .end annotation

    .line 379
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026MutualError::class.java))"

    const-string v3, "mutual_dictionary_new.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/genders/GenderMutualError;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getMutualFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 295
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualFilesFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualFilesFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/ideomobile/hapoalim/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualSideMenuData()Lio/reactivex/Single;

    move-result-object v0

    .line 335
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualSideMenuFromServer$1;

    invoke-direct {v1, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getMutualSideMenuFromServer$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRem\u2026 it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 393
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026ideMenuData::class.java))"

    const-string v3, "mutual_menu_actions.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/mutual/SideMenuData;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;",
            ">;"
        }
    .end annotation

    .line 364
    const-class v0, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    iget-boolean v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const-string v2, "Single.just(mStaticHelpe\u2026lStaticData::class.java))"

    const-string v3, "mutual.json"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    :cond_0
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v3, v0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ideomobile/hapoalim/model/staticdata/mutual/MutualStaticData;

    :cond_2
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private final handleAndroidVersionFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 184
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 185
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 186
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 193
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleAndroidVersionFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 186
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 183
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleBlackListFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 243
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 244
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 245
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 252
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleBlackListFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 245
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 242
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ideomobile/hapoalim/model/FaqItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 201
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 202
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 203
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$1;

    invoke-direct {v1, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 222
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$2;

    invoke-direct {v2, p2, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleFaqFileOnError$2;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 203
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 200
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetAndroidFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 109
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 110
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 111
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 118
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetAndroidFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 111
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 145
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 146
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 147
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 155
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualDictionaryFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 147
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 144
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetMutualFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 126
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 127
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 128
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 136
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetMutualFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 128
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 125
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final handleGetSideMenuFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 166
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 167
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 168
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$1;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 175
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$2;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$handleGetSideMenuFileOnError$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;)V

    .line 168
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private final sourceManager(Landroid/content/Context;)V
    .locals 5

    .line 61
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "static_offline"

    invoke-virtual {v0, p1, v3, v2}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    sget-object v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v0, v3, v2}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    .line 64
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 68
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 69
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 70
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$1;

    invoke-direct {v2, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 77
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$2;

    invoke-direct {v3, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$android$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 83
    iget-boolean v2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v2, :cond_1

    .line 84
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    goto :goto_1

    .line 86
    :cond_1
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getAndroidVersionFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    .line 87
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 88
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 89
    new-instance v3, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$1;

    invoke-direct {v3, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 96
    new-instance v4, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$2;

    invoke-direct {v4, p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$sourceManager$version$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 89
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 101
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getFirstFromStorage(Landroid/content/Context;)V

    .line 103
    iget-object p1, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/reactivex/disposables/Disposable;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-virtual {p1, v3}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "StaticManager"

    const-string v1, "Clear"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 419
    iput-object v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mStaticHelper:Lcom/ideomobile/hapoalim/managers/staticloader/StaticHelper;

    return-void
.end method

.method public final getGeneralFaqByFileName(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/ideomobile/hapoalim/model/FaqItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->getGeneralFaqFilesFromServer(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 263
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 264
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$1;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    .line 285
    new-instance v2, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager$getGeneralFaqByFileName$terminalFaq$2;-><init>(Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 265
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 289
    iget-object p2, p0, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/managers/staticloader/StaticManager;->sourceManager(Landroid/content/Context;)V

    return-void
.end method
