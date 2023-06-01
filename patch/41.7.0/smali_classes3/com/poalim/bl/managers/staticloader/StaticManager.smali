.class public final Lcom/poalim/bl/managers/staticloader/StaticManager;
.super Ljava/lang/Object;
.source "StaticManager.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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

.field private mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

.field private mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 66
    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/poalim/bl/managers/staticloader/StaticManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "staticOffLine"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/poalim/bl/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 49
    new-instance p2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 51
    new-instance p2, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-direct {p2}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;-><init>()V

    iput-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    .line 56
    new-instance p2, Lcom/poalim/bl/managers/staticloader/StaticHelper;

    invoke-direct {p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;-><init>()V

    iput-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    .line 57
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 47
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final checkIfGetStaticComplete()V
    .locals 2

    .line 641
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMAndroidKeys()Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 642
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMutualStaticData()Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 643
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMTextDictionary()Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 644
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMSideMenuData()Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMAndroidVersion()Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMBlackListPhones()Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 647
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMMultiActionData()Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 648
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMNewMenuData()Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 649
    invoke-virtual {v0}, Lcom/poalim/bl/data/StaticDataManager;->getMSearchData()Lcom/poalim/bl/model/staticdata/android/SearchModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
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
            "Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$PcuXS-hP9auGuNHXhxv2RvBt2vA;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$PcuXS-hP9auGuNHXhxv2RvBt2vA;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteAndroidStaticData()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_ANDROID_FILE_PREFIX, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_ANDROID_FILE_PREFIX, it.toString())\n\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getAndroidFilesFromServer$lambda-29(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "android.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 371
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 372
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;",
            ">;"
        }
    .end annotation

    .line 454
    const-class v0, Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "android.json"

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_ANDROID_FILE_PREFIX, AndroidStaticData::class.java))\n            }"

    .line 454
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_ANDROID_FILE_PREFIX, AndroidStaticData::class.java))\n            }"

    .line 456
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
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
            "Lcom/poalim/bl/model/staticdata/android/AndroidVersion;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteAndroidVersion()Lio/reactivex/Single;

    move-result-object v0

    .line 417
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$5cbytLpkjKrwOZdS_AqOs3Kn7OU;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$5cbytLpkjKrwOZdS_AqOs3Kn7OU;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteAndroidVersion()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_ANDROID_VERSION, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_ANDROID_VERSION, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getAndroidVersionFromServer$lambda-34(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)Lcom/poalim/bl/model/staticdata/android/AndroidVersion;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "android_version.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 419
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 420
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/android/AndroidVersion;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/android/AndroidVersion;",
            ">;"
        }
    .end annotation

    .line 482
    const-class v0, Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "android_version.json"

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_ANDROID_VERSION, AndroidVersion::class.java))\n            }"

    .line 482
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_ANDROID_VERSION, AndroidVersion::class.java))\n            }"

    .line 484
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
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
            "Lcom/poalim/bl/model/staticdata/android/BlackListPhones;",
            ">;"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteBlackListPhones()Lio/reactivex/Single;

    move-result-object v0

    .line 427
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8aqShRZUOs0YPo-fGlHWWzDg9ks;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8aqShRZUOs0YPo-fGlHWWzDg9ks;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteBlackListPhones()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_BLACK_LIST_PHONES, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_BLACK_LIST_PHONES, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getBlackListFromServer$lambda-35(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)Lcom/poalim/bl/model/staticdata/android/BlackListPhones;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "black_list_phones.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 429
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 430
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/android/BlackListPhones;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/android/BlackListPhones;",
            ">;"
        }
    .end annotation

    .line 489
    const-class v0, Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "black_list_phones.json"

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_BLACK_LIST_PHONES, BlackListPhones::class.java))\n            }"

    .line 489
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_BLACK_LIST_PHONES, BlackListPhones::class.java))\n            }"

    .line 491
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final getFirstFromStorage(Landroid/content/Context;)V
    .locals 9

    .line 527
    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 528
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getSearchStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSearchFileOnError(Landroid/content/Context;)V

    .line 531
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getSearchFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 532
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 533
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$vCz0GFQ-lHHaTc7LSpHtrMjo3ts;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$vCz0GFQ-lHHaTc7LSpHtrMjo3ts;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$-MnBCOdrS9_xPHWmvB2s-JWivcM;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$-MnBCOdrS9_xPHWmvB2s-JWivcM;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 542
    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v1, :cond_1

    .line 543
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_1

    .line 545
    :cond_1
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualFileOnError(Landroid/content/Context;)V

    .line 546
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    .line 547
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 548
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 549
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$pv2nWa8hPgE9zihYLHw8c-V6AMo;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$pv2nWa8hPgE9zihYLHw8c-V6AMo;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v3, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$bGgZ2YFN5jzETtx1Wxn9fps5niM;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$bGgZ2YFN5jzETtx1Wxn9fps5niM;

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 558
    iget-boolean v2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v2, :cond_2

    .line 559
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    goto :goto_2

    .line 561
    :cond_2
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V

    .line 562
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualDictFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v2

    .line 563
    :goto_2
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 564
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 565
    new-instance v3, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$IqK2vp2Q8OzR-s58EdmG5aGAiPI;

    invoke-direct {v3, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$IqK2vp2Q8OzR-s58EdmG5aGAiPI;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v4, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$3nWoOxHbhJ0JD1_fYjr1lyhLMgU;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$3nWoOxHbhJ0JD1_fYjr1lyhLMgU;

    invoke-virtual {v2, v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 574
    iget-boolean v3, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v3, :cond_3

    .line 575
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v3

    goto :goto_3

    .line 577
    :cond_3
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError(Landroid/content/Context;)V

    .line 578
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v3

    .line 579
    :goto_3
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 580
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    .line 581
    new-instance v4, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$2mdLWa5s-6spuSq4OtQeIKILHXw;

    invoke-direct {v4, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$2mdLWa5s-6spuSq4OtQeIKILHXw;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v5, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$isVUj-yiN0cfZSMhJ_ZtopTrU6c;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$isVUj-yiN0cfZSMhJ_ZtopTrU6c;

    invoke-virtual {v3, v4, v5}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    .line 590
    iget-boolean v4, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v4, :cond_4

    .line 591
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v4

    goto :goto_4

    .line 593
    :cond_4
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleBlackListFileOnError(Landroid/content/Context;)V

    .line 594
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getBlackListFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v4

    .line 595
    :goto_4
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v4

    .line 596
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v4

    .line 597
    new-instance v5, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$p_gtjrzWg3o1asChqVJxQxRWqFw;

    invoke-direct {v5, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$p_gtjrzWg3o1asChqVJxQxRWqFw;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v6, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$lx1oYm7zbp5n3wezOKE1Uo_xz00;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$lx1oYm7zbp5n3wezOKE1Uo_xz00;

    invoke-virtual {v4, v5, v6}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v4

    .line 606
    iget-boolean v5, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v5, :cond_5

    .line 607
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMultiActionsStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v5

    goto :goto_5

    .line 609
    :cond_5
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleMultiActionsFileOnError(Landroid/content/Context;)V

    .line 610
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMultiActionsFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v5

    .line 611
    :goto_5
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    .line 612
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v5

    .line 613
    new-instance v6, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$paCpeHV_K3h-6O-_u3rnduhHTzk;

    invoke-direct {v6, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$paCpeHV_K3h-6O-_u3rnduhHTzk;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v7, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NMu-BMLSgNcyws5UoTgO8IfTuvY;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NMu-BMLSgNcyws5UoTgO8IfTuvY;

    invoke-virtual {v5, v6, v7}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v5

    .line 621
    iget-boolean v6, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v6, :cond_6

    .line 622
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getNewMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    goto :goto_6

    .line 624
    :cond_6
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleNewMenuFileOnError(Landroid/content/Context;)V

    .line 625
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getNewMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 626
    :goto_6
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 627
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 628
    new-instance v6, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8UHBlfWI5icfO38s3p1WWxXBMtQ;

    invoke-direct {v6, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8UHBlfWI5icfO38s3p1WWxXBMtQ;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    sget-object v7, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$tFNfgLmXlp927rnzIrYHG5gGyG4;->INSTANCE:Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$tFNfgLmXlp927rnzIrYHG5gGyG4;

    invoke-virtual {p1, v6, v7}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 636
    iget-object v6, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v7, 0x7

    new-array v7, v7, [Lio/reactivex/disposables/Disposable;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x4

    aput-object v5, v7, v1

    const/4 v1, 0x5

    aput-object p1, v7, v1

    const/4 p1, 0x6

    aput-object v0, v7, p1

    invoke-virtual {v6, v7}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final getFirstFromStorage$lambda-37(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/SearchModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 536
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMSearchData(Lcom/poalim/bl/model/staticdata/android/SearchModel;)V

    .line 537
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-38(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-39(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 551
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMutualStaticData(Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V

    .line 552
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-40(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-41(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 567
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setTextDictionary(Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V

    .line 568
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-42(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-43(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 583
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMSideMenuData(Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V

    .line 584
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-44(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-45(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 599
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMBlackListPhones(Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V

    .line 600
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-46(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-47(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 615
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMMultiActionData(Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V

    .line 616
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-48(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final getFirstFromStorage$lambda-49(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 630
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMNewMenuData(Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)V

    .line 631
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    :cond_0
    return-void
.end method

.method private static final getFirstFromStorage$lambda-50(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/FaqItem;",
            ">;"
        }
    .end annotation

    .line 468
    const-class v0, Lcom/poalim/bl/model/FaqItem;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, p2, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/FaqItem;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, fName, FaqItem::class.java))\n            }"

    .line 468
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, p2, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/FaqItem;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, fName, FaqItem::class.java))\n            }"

    .line 470
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method public static synthetic getGeneralFaqByFileName$default(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 313
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqByFileName(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final getGeneralFaqByFileName$lambda-25(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/FaqItem;)V
    .locals 1

    const-string v0, "$fName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p4}, Lcom/poalim/bl/model/FaqItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-boolean v0, p4, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_8

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "withdrawal_money.json"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    const-string p2, "scan_checks.json"

    .line 323
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    .line 334
    :cond_3
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    const-string p2, "pre_login_contact_us.json"

    .line 323
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    .line 325
    :cond_5
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    const-string p2, "terminalcash.json"

    .line 323
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    goto :goto_0

    .line 328
    :cond_7
    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_8
    invoke-direct {p2, p3, p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f38d439 -> :sswitch_3
        -0x9247059 -> :sswitch_2
        0x6130c5c9 -> :sswitch_1
        0x67b0c320 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final getGeneralFaqByFileName$lambda-26(Ljava/lang/String;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "$fName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    invoke-static {p0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p1, p2, p0, p3}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleFaqFileOnError(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

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
            "Lcom/poalim/bl/model/FaqItem;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0, p2}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteGeneralFaqFilesData(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 397
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8Cy_5sgnig5faSaA8reD69aI0hY;

    invoke-direct {v1, p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8Cy_5sgnig5faSaA8reD69aI0hY;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string p2, "mStaticLoaderImpl.getRemoteGeneralFaqFilesData(fName)\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, fName, it)\n                        it.isSuccess = true\n                        Log.e(fName, it.toString())\n\n                        return@map it\n                    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getGeneralFaqFilesFromServer$lambda-32(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lcom/poalim/bl/model/FaqItem;)Lcom/poalim/bl/model/FaqItem;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 399
    iput-boolean p0, p3, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 400
    invoke-virtual {p3}, Lcom/poalim/bl/model/FaqItem;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method private final getMultiActionsFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getMultiActions()Lio/reactivex/Single;

    move-result-object v0

    .line 379
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$lNg1T2MCd7pY8qjJT7Lq3wpYZFk;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$lNg1T2MCd7pY8qjJT7Lq3wpYZFk;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getMultiActions()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_MULTI_ACTIONS, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_MULTI_ACTIONS, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMultiActionsFromServer$lambda-30(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "multi_actions.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 381
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 382
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getMultiActionsStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;",
            ">;"
        }
    .end annotation

    .line 496
    const-class v0, Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "multi_actions.json"

    if-eqz v1, :cond_1

    .line 497
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_MULTI_ACTIONS, MultiActionData::class.java))\n            }"

    .line 496
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_MULTI_ACTIONS, MultiActionData::class.java))\n            }"

    .line 498
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
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
            "Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualDictData()Lio/reactivex/Single;

    move-result-object v0

    .line 359
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$F4JvwWGUaRkguPuEajHFqPSAJ6c;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$F4JvwWGUaRkguPuEajHFqPSAJ6c;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteMutualDictData()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_MUTUAL_DICTIONARY, it)\n                        it.isSuccess = true\n                        Log.e(\"mutual_dictionary\", it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMutualDictFromServer$lambda-28(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mutual_dictionary_new.json"

    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 361
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 362
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mutual_dictionary"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;",
            ">;"
        }
    .end annotation

    .line 461
    const-class v0, Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "mutual_dictionary_new.json"

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_MUTUAL_DICTIONARY, GenderMutualError::class.java))\n            }"

    .line 461
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_MUTUAL_DICTIONARY, GenderMutualError::class.java))\n            }"

    .line 463
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
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
            "Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualStaticData()Lio/reactivex/Single;

    move-result-object v0

    .line 350
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$9k44F74j69tv3mvXDhYXZMcXmZE;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$9k44F74j69tv3mvXDhYXZMcXmZE;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteMutualStaticData()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_MUTUAL_FILE_PREFIX, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_MUTUAL_FILE_PREFIX, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMutualFilesFromServer$lambda-27(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "mutual.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 352
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 353
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getMutualSideMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getRemoteMutualSideMenuData()Lio/reactivex/Single;

    move-result-object v0

    .line 408
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$o1UbqCCSi0WCU_ojX2C4_1g41dA;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$o1UbqCCSi0WCU_ojX2C4_1g41dA;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getRemoteMutualSideMenuData()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_MUTUAL_SIDE_MENU, it)\n                        it.isSuccess = true\n                        Log.e(\"MUTUAL_SIDE_MENU\", it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMutualSideMenuFromServer$lambda-33(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "mutual_menu_actions.json"

    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 410
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 411
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MUTUAL_SIDE_MENU"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 475
    const-class v0, Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "mutual_menu_actions.json"

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_MUTUAL_SIDE_MENU, SideMenuData::class.java))\n            }"

    .line 475
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_MUTUAL_SIDE_MENU, SideMenuData::class.java))\n            }"

    .line 477
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;",
            ">;"
        }
    .end annotation

    .line 446
    const-class v0, Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "mutual.json"

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_MUTUAL_FILE_PREFIX, MutualStaticData::class.java))\n            }"

    .line 446
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_MUTUAL_FILE_PREFIX, MutualStaticData::class.java))\n            }"

    .line 448
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final getNewMenuFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getNewMenu()Lio/reactivex/Single;

    move-result-object v0

    .line 388
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$XDVg020DbfD9_8Zojy_1xk_HCWg;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$XDVg020DbfD9_8Zojy_1xk_HCWg;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getNewMenu()\n                    .map {\n                        mStaticHelper?.saveFileToLocalStorage(context, STATIC_NEW_MENU, it)\n                        it.isSuccess = true\n                        Log.e(STATIC_NEW_MENU, it.toString())\n                        return@map it\n                    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getNewMenuFromServer$lambda-31(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    const-string v0, "new_menu.json"

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 390
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 391
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getNewMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;",
            ">;"
        }
    .end annotation

    .line 503
    const-class v0, Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "new_menu.json"

    if-eqz v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_NEW_MENU, NewMenuData::class.java))\n            }"

    .line 503
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n                Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_NEW_MENU, NewMenuData::class.java))\n            }"

    .line 505
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final getSearchFromServer(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/android/SearchModel;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticLoaderImpl:Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;

    invoke-virtual {v0}, Lcom/poalim/bl/managers/staticloader/impl/StaticLoaderImpl;->getNewSearchItems()Lio/reactivex/Single;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$LRSIiENsd5KuSvV3lXl4Ob467Ac;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$LRSIiENsd5KuSvV3lXl4Ob467Ac;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "mStaticLoaderImpl.getNewSearchItems()\n            .map {\n                mStaticHelper?.saveFileToLocalStorage(context, STATIC_SEARCH, it)\n                it.isSuccess = true\n                Log.e(STATIC_NEW_MENU, it.toString())\n                return@map it\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getSearchFromServer$lambda-36(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/SearchModel;)Lcom/poalim/bl/model/staticdata/android/SearchModel;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "search.json"

    invoke-virtual {p0, p1, v0, p2}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->saveFileToLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    .line 438
    iput-boolean p0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    .line 439
    invoke-virtual {p2}, Lcom/poalim/bl/model/staticdata/android/SearchModel;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "new_menu.json"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final getSearchStorage(Landroid/content/Context;)Lio/reactivex/Single;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/poalim/bl/model/staticdata/android/SearchModel;",
            ">;"
        }
    .end annotation

    .line 510
    const-class v0, Lcom/poalim/bl/model/staticdata/android/SearchModel;

    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    const/4 v2, 0x0

    const-string v3, "search.json"

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/SearchModel;

    :goto_0
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n            Single.just(mStaticHelper?.loadFileFromAssets(context, STATIC_SEARCH, SearchModel::class.java))\n        }"

    .line 510
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 513
    :cond_1
    iget-object v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1, v3, v0}, Lcom/poalim/bl/managers/staticloader/StaticHelper;->loadFileFromLocalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Lcom/poalim/networkmanager/base/BaseResponse;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/poalim/bl/model/staticdata/android/SearchModel;

    :goto_1
    invoke-static {v2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p1

    const-string v0, "{\n            Single.just(mStaticHelper?.loadFileFromLocalStorage(context, STATIC_SEARCH, SearchModel::class.java))\n        }"

    .line 512
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private final handleAndroidVersionFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 205
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 206
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 207
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$gqt8n9WplaF_A5L1MFP-pYqypfs;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$gqt8n9WplaF_A5L1MFP-pYqypfs;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 214
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$-MoJ4GrJdmuNr1-4H3rVqwEK3Mo;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$-MoJ4GrJdmuNr1-4H3rVqwEK3Mo;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 207
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 204
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleAndroidVersionFileOnError$lambda-15(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMAndroidVersion(Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V

    .line 210
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleAndroidVersionFileOnError$lambda-16(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "android_version.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleBlackListFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getBlackListStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 264
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 265
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 266
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$Es0M_TljhRk8hhmgf53x3NoOHvw;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$Es0M_TljhRk8hhmgf53x3NoOHvw;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 273
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$e13lcvBKGsHDKJp2CXv2fehSW0s;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$e13lcvBKGsHDKJp2CXv2fehSW0s;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 266
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 263
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleBlackListFileOnError$lambda-19(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMBlackListPhones(Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V

    .line 269
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleBlackListFileOnError$lambda-20(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "black_list_phones.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
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
            "Lcom/poalim/bl/model/FaqItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 222
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 223
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 224
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$_LosYpnmgpRDX2N4RC7G2I5Ynh4;

    invoke-direct {v1, p2, p3}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$_LosYpnmgpRDX2N4RC7G2I5Ynh4;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 243
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$VBRd-YKeqdcdVMWngFlSKuEAcVE;

    invoke-direct {v2, p2, p3}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$VBRd-YKeqdcdVMWngFlSKuEAcVE;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 224
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 221
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleFaqFileOnError$lambda-17(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/model/FaqItem;)V
    .locals 1

    const-string v0, "$fName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-boolean v0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_8

    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "withdrawal_money.json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    const-string v0, "scan_checks.json"

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    .line 237
    :cond_3
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    const-string v0, "pre_login_contact_us.json"

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    .line 228
    :cond_5
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    const-string v0, "terminalcash.json"

    .line 226
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    goto :goto_0

    .line 231
    :cond_7
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    .line 241
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f38d439 -> :sswitch_3
        -0x9247059 -> :sswitch_2
        0x6130c5c9 -> :sswitch_1
        0x67b0c320 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final handleFaqFileOnError$lambda-18(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "$fName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "unknown error "

    sparse-switch v0, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v0, "withdrawal_money.json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_4

    .line 252
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_1
    const-string v0, "scan_checks.json"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_4

    .line 255
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_2
    const-string v0, "pre_login_contact_us.json"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_4

    .line 246
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, p0

    :goto_2
    const-string p0, "pre_login_contact_us"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :sswitch_3
    const-string v0, "terminalcash.json"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_4

    .line 249
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, p0

    :goto_3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    const/4 p0, 0x0

    .line 258
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f38d439 -> :sswitch_3
        -0x9247059 -> :sswitch_2
        0x6130c5c9 -> :sswitch_1
        0x67b0c320 -> :sswitch_0
    .end sparse-switch
.end method

.method private final handleGetAndroidFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 130
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 131
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 132
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$tXtJbUjB7yza6BzkzG0-u7FbxVQ;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$tXtJbUjB7yza6BzkzG0-u7FbxVQ;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 139
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$jLlsTIwZyPdhUPabx_nnaE0FLyo;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$jLlsTIwZyPdhUPabx_nnaE0FLyo;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 132
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 129
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetAndroidFileOnError$lambda-7(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMAndroidKeys(Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V

    .line 135
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetAndroidFileOnError$lambda-8(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "android.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleGetMutualDictionaryFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualDictionaryStorage(Landroid/content/Context;)Lio/reactivex/Single;

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
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$csMeEIZvkf3QOAj9TX1l419VjvY;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$csMeEIZvkf3QOAj9TX1l419VjvY;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 176
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$ih9i6NN88tJQTDQooQi6m46Sex4;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$ih9i6NN88tJQTDQooQi6m46Sex4;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 168
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 165
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetMutualDictionaryFileOnError$lambda-11(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setTextDictionary(Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V

    .line 171
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetMutualDictionaryFileOnError$lambda-12(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "mutual_dictionary"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleGetMutualFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 147
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 148
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 149
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$UtP8WL0dN1WGCcm1SISB3jeENaM;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$UtP8WL0dN1WGCcm1SISB3jeENaM;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 157
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$zmJ0J67MUg4SRwDxjRByVaKonjg;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$zmJ0J67MUg4SRwDxjRByVaKonjg;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 149
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 146
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetMutualFileOnError$lambda-10(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "mutual.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetMutualFileOnError$lambda-9(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMutualStaticData(Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V

    .line 152
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleGetSearchFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getSearchStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 113
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 114
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 115
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8QarjJxcRnjEYBZzOarHb1Qpbwc;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$8QarjJxcRnjEYBZzOarHb1Qpbwc;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 122
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$t2nNjI1uMEp-DH_9ZGBiiNIdI5M;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$t2nNjI1uMEp-DH_9ZGBiiNIdI5M;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 115
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetSearchFileOnError$lambda-5(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/SearchModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMSearchData(Lcom/poalim/bl/model/staticdata/android/SearchModel;)V

    .line 118
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetSearchFileOnError$lambda-6(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "android.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleGetSideMenuFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualSideMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 187
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 188
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 189
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$0rzTzgSUS4nXjukEGHzHd2xi5gQ;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$0rzTzgSUS4nXjukEGHzHd2xi5gQ;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 196
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$odCYREfGQ68vJrK5_jExai6dpEI;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$odCYREfGQ68vJrK5_jExai6dpEI;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 189
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 186
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleGetSideMenuFileOnError$lambda-13(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMSideMenuData(Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V

    .line 192
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleGetSideMenuFileOnError$lambda-14(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "STATIC_MUTUAL_SIDE_MENU"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleMultiActionsFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMultiActionsStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 281
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 282
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 283
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$Rkfjep2ZALf_GnnWqEpD_IPut7M;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$Rkfjep2ZALf_GnnWqEpD_IPut7M;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 290
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$e1YhgD8MnSYAAiz2lpZd_yv95dc;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$e1YhgD8MnSYAAiz2lpZd_yv95dc;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 283
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 280
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleMultiActionsFileOnError$lambda-21(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMMultiActionData(Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V

    .line 286
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleMultiActionsFileOnError$lambda-22(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "multi_actions.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final handleNewMenuFileOnError(Landroid/content/Context;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getNewMenuStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    .line 298
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 299
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 300
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$44m243f-j4lQsglAme6g6qthzWA;

    invoke-direct {v1, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$44m243f-j4lQsglAme6g6qthzWA;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 307
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$bTe6Ml_RdQflLeXWak2AxE_PZfs;

    invoke-direct {v2, p0}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$bTe6Ml_RdQflLeXWak2AxE_PZfs;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;)V

    .line 300
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 297
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final handleNewMenuFileOnError$lambda-23(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p1, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {v0, p1}, Lcom/poalim/bl/data/StaticDataManager;->setMNewMenuData(Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)V

    .line 303
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static final handleNewMenuFileOnError$lambda-24(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown error "

    :cond_0
    const-string v0, "new_menu.json"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$-MnBCOdrS9_xPHWmvB2s-JWivcM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-38(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$-MoJ4GrJdmuNr1-4H3rVqwEK3Mo(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError$lambda-16(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$0rzTzgSUS4nXjukEGHzHd2xi5gQ(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError$lambda-13(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V

    return-void
.end method

.method public static synthetic lambda$27shAoK3U2Bj7S9Ou4uaJqAuzFo(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-1(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V

    return-void
.end method

.method public static synthetic lambda$2mdLWa5s-6spuSq4OtQeIKILHXw(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-43(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)V

    return-void
.end method

.method public static synthetic lambda$3nWoOxHbhJ0JD1_fYjr1lyhLMgU(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-42(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$44m243f-j4lQsglAme6g6qthzWA(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleNewMenuFileOnError$lambda-23(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)V

    return-void
.end method

.method public static synthetic lambda$5cbytLpkjKrwOZdS_AqOs3Kn7OU(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)Lcom/poalim/bl/model/staticdata/android/AndroidVersion;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidVersionFromServer$lambda-34(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)Lcom/poalim/bl/model/staticdata/android/AndroidVersion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$8Cy_5sgnig5faSaA8reD69aI0hY(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lcom/poalim/bl/model/FaqItem;)Lcom/poalim/bl/model/FaqItem;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqFilesFromServer$lambda-32(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/String;Lcom/poalim/bl/model/FaqItem;)Lcom/poalim/bl/model/FaqItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$8QarjJxcRnjEYBZzOarHb1Qpbwc(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/SearchModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSearchFileOnError$lambda-5(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/SearchModel;)V

    return-void
.end method

.method public static synthetic lambda$8UHBlfWI5icfO38s3p1WWxXBMtQ(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-49(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)V

    return-void
.end method

.method public static synthetic lambda$8aqShRZUOs0YPo-fGlHWWzDg9ks(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)Lcom/poalim/bl/model/staticdata/android/BlackListPhones;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getBlackListFromServer$lambda-35(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)Lcom/poalim/bl/model/staticdata/android/BlackListPhones;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$9k44F74j69tv3mvXDhYXZMcXmZE(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualFilesFromServer$lambda-27(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Es0M_TljhRk8hhmgf53x3NoOHvw(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleBlackListFileOnError$lambda-19(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V

    return-void
.end method

.method public static synthetic lambda$F4JvwWGUaRkguPuEajHFqPSAJ6c(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualDictFromServer$lambda-28(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$IqK2vp2Q8OzR-s58EdmG5aGAiPI(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-41(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V

    return-void
.end method

.method public static synthetic lambda$LRSIiENsd5KuSvV3lXl4Ob467Ac(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/SearchModel;)Lcom/poalim/bl/model/staticdata/android/SearchModel;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getSearchFromServer$lambda-36(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/SearchModel;)Lcom/poalim/bl/model/staticdata/android/SearchModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$NMu-BMLSgNcyws5UoTgO8IfTuvY(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-48(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$NQLe6SiUL_YdsmWuNxs6bXhzu2I(Ljava/lang/String;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqByFileName$lambda-26(Ljava/lang/String;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$NT9lLVZlTaO8XSGU-U5zAxaew1M(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-3(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V

    return-void
.end method

.method public static synthetic lambda$PcuXS-hP9auGuNHXhxv2RvBt2vA(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidFilesFromServer$lambda-29(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Rkfjep2ZALf_GnnWqEpD_IPut7M(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleMultiActionsFileOnError$lambda-21(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V

    return-void
.end method

.method public static synthetic lambda$UfEaBM_0T2Bk_7Bmjdh5qEOxB2g(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/FaqItem;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqByFileName$lambda-25(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/FaqItem;)V

    return-void
.end method

.method public static synthetic lambda$UtP8WL0dN1WGCcm1SISB3jeENaM(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualFileOnError$lambda-9(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V

    return-void
.end method

.method public static synthetic lambda$VBRd-YKeqdcdVMWngFlSKuEAcVE(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleFaqFileOnError$lambda-18(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$XDVg020DbfD9_8Zojy_1xk_HCWg(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getNewMenuFromServer$lambda-31(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;)Lcom/poalim/bl/model/staticdata/mutual/NewMenuData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$_LosYpnmgpRDX2N4RC7G2I5Ynh4(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/model/FaqItem;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleFaqFileOnError$lambda-17(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/model/FaqItem;)V

    return-void
.end method

.method public static synthetic lambda$bGgZ2YFN5jzETtx1Wxn9fps5niM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-40(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$bTe6Ml_RdQflLeXWak2AxE_PZfs(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleNewMenuFileOnError$lambda-24(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$csMeEIZvkf3QOAj9TX1l419VjvY(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError$lambda-11(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/genders/GenderMutualError;)V

    return-void
.end method

.method public static synthetic lambda$e13lcvBKGsHDKJp2CXv2fehSW0s(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleBlackListFileOnError$lambda-20(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$e1YhgD8MnSYAAiz2lpZd_yv95dc(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleMultiActionsFileOnError$lambda-22(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$gqt8n9WplaF_A5L1MFP-pYqypfs(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError$lambda-15(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V

    return-void
.end method

.method public static synthetic lambda$ih9i6NN88tJQTDQooQi6m46Sex4(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualDictionaryFileOnError$lambda-12(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$isVUj-yiN0cfZSMhJ_ZtopTrU6c(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-44(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$jLlsTIwZyPdhUPabx_nnaE0FLyo(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetAndroidFileOnError$lambda-8(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$lNg1T2MCd7pY8qjJT7Lq3wpYZFk(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMultiActionsFromServer$lambda-30(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$lx1oYm7zbp5n3wezOKE1Uo_xz00(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-46(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$nE9ryTMxfUb3_r770JBpr6tiuXg(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-2(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$o1UbqCCSi0WCU_ojX2C4_1g41dA(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getMutualSideMenuFromServer$lambda-33(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;)Lcom/poalim/bl/model/staticdata/mutual/SideMenuData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$odCYREfGQ68vJrK5_jExai6dpEI(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSideMenuFileOnError$lambda-14(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$p_gtjrzWg3o1asChqVJxQxRWqFw(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-45(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/BlackListPhones;)V

    return-void
.end method

.method public static synthetic lambda$paCpeHV_K3h-6O-_u3rnduhHTzk(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-47(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MultiActionData;)V

    return-void
.end method

.method public static synthetic lambda$pv2nWa8hPgE9zihYLHw8c-V6AMo(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-39(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/mutual/MutualStaticData;)V

    return-void
.end method

.method public static synthetic lambda$qQaoRdjc8W54Ox-da_zk3MqDc2k(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-4(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$t2nNjI1uMEp-DH_9ZGBiiNIdI5M(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetSearchFileOnError$lambda-6(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$tFNfgLmXlp927rnzIrYHG5gGyG4(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-50(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$tXtJbUjB7yza6BzkzG0-u7FbxVQ(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetAndroidFileOnError$lambda-7(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V

    return-void
.end method

.method public static synthetic lambda$vCz0GFQ-lHHaTc7LSpHtrMjo3ts(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/SearchModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage$lambda-37(Lcom/poalim/bl/managers/staticloader/StaticManager;Lcom/poalim/bl/model/staticdata/android/SearchModel;)V

    return-void
.end method

.method public static synthetic lambda$zmJ0J67MUg4SRwDxjRByVaKonjg(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetMutualFileOnError$lambda-10(Lcom/poalim/bl/managers/staticloader/StaticManager;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final sourceManager(Landroid/content/Context;)V
    .locals 4

    .line 66
    sget-object v0, Lcom/poalim/bl/extensions/DelegatePrefs;->INSTANCE:Lcom/poalim/bl/extensions/DelegatePrefs;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "static_offline"

    invoke-virtual {v0, p1, v2, v1}, Lcom/poalim/bl/extensions/DelegatePrefs;->preference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lcom/poalim/bl/extensions/PreferencesExtension;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager$lambda-0(Lcom/poalim/bl/extensions/PreferencesExtension;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidFilesFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v0

    .line 73
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 74
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$27shAoK3U2Bj7S9Ou4uaJqAuzFo;

    invoke-direct {v1, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$27shAoK3U2Bj7S9Ou4uaJqAuzFo;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 82
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$nE9ryTMxfUb3_r770JBpr6tiuXg;

    invoke-direct {v2, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$nE9ryTMxfUb3_r770JBpr6tiuXg;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 75
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 87
    iget-boolean v1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidVersionStorage(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    goto :goto_1

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getAndroidVersionFromServer(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object v1

    .line 91
    :goto_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 92
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    .line 93
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NT9lLVZlTaO8XSGU-U5zAxaew1M;

    invoke-direct {v2, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NT9lLVZlTaO8XSGU-U5zAxaew1M;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 100
    new-instance v3, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$qQaoRdjc8W54Ox-da_zk3MqDc2k;

    invoke-direct {v3, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$qQaoRdjc8W54Ox-da_zk3MqDc2k;-><init>(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 93
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 105
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getFirstFromStorage(Landroid/content/Context;)V

    .line 107
    iget-object p1, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v2, 0x2

    new-array v2, v2, [Lio/reactivex/disposables/Disposable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p1, v2}, Lio/reactivex/disposables/CompositeDisposable;->addAll([Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private static final sourceManager$lambda-0(Lcom/poalim/bl/extensions/PreferencesExtension;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/poalim/bl/extensions/PreferencesExtension<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/poalim/bl/managers/staticloader/StaticManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/poalim/bl/extensions/PreferencesExtension;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final sourceManager$lambda-1(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object p1, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {p1, p2}, Lcom/poalim/bl/data/StaticDataManager;->setMAndroidKeys(Lcom/poalim/bl/model/staticdata/android/AndroidStaticData;)V

    .line 78
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetAndroidFileOnError(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static final sourceManager$lambda-2(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "unknown error "

    :cond_0
    const-string v0, "android.json"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleGetAndroidFileOnError(Landroid/content/Context;)V

    return-void
.end method

.method private static final sourceManager$lambda-3(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p2, Lcom/poalim/networkmanager/base/BaseResponse;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 95
    sget-object p1, Lcom/poalim/bl/data/StaticDataManager;->INSTANCE:Lcom/poalim/bl/data/StaticDataManager;

    invoke-virtual {p1, p2}, Lcom/poalim/bl/data/StaticDataManager;->setMAndroidVersion(Lcom/poalim/bl/model/staticdata/android/AndroidVersion;)V

    .line 96
    invoke-direct {p0}, Lcom/poalim/bl/managers/staticloader/StaticManager;->checkIfGetStaticComplete()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static final sourceManager$lambda-4(Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "unknown error "

    :cond_0
    const-string v0, "android_version.json"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->handleAndroidVersionFileOnError(Landroid/content/Context;)V

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

    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->callback:Lkotlin/jvm/functions/Function1;

    .line 521
    iput-object v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mStaticHelper:Lcom/poalim/bl/managers/staticloader/StaticHelper;

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
            "Lcom/poalim/bl/model/FaqItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mIsStaticOffline:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFAQStorage(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/poalim/bl/managers/staticloader/StaticManager;->getGeneralFaqFilesFromServer(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 318
    :goto_0
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 319
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 320
    new-instance v1, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$UfEaBM_0T2Bk_7Bmjdh5qEOxB2g;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$UfEaBM_0T2Bk_7Bmjdh5qEOxB2g;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;)V

    .line 340
    new-instance v2, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NQLe6SiUL_YdsmWuNxs6bXhzu2I;

    invoke-direct {v2, p2, p0, p1, p3}, Lcom/poalim/bl/managers/staticloader/-$$Lambda$StaticManager$NQLe6SiUL_YdsmWuNxs6bXhzu2I;-><init>(Ljava/lang/String;Lcom/poalim/bl/managers/staticloader/StaticManager;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 320
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lcom/poalim/bl/managers/staticloader/StaticManager;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/poalim/bl/managers/staticloader/StaticManager;->sourceManager(Landroid/content/Context;)V

    return-void
.end method
