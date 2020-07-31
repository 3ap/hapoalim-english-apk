.class public final Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PreSplashActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreSplashActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreSplashActivity.kt\ncom/ideomobile/hapoalim/features/minions/PreSplashActivity\n*L\n1#1,355:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final existsOneIdentifier$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final loanWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final mBabooshkaChannel$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

.field private mBabooshkaLayout:Landroid/widget/LinearLayout;

.field private mCreditWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mISWmRecordSelected:Z

.field private mIndexVideo:I

.field private mIsBabooshkaSelected:Z

.field private mIsPreProdSelected:Z

.field private mIsProdBetaSelected:Z

.field private mIsProdSelected:Z

.field private mIsWmCISelected:Z

.field private mLoanWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mMinionsKeyDialog:Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;

.field private mOtpSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mPasswordOnlySwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mServerNumberLayout:Landroid/widget/LinearLayout;

.field private mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

.field private mVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final magicOtp$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private final staticOffLine$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "magicOtp"

    const-string v4, "getMagicOtp()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "staticOffLine"

    const-string v4, "getStaticOffLine()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "existsOneIdentifier"

    const-string v4, "getExistsOneIdentifier()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "creditWorld"

    const-string v4, "getCreditWorld()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "loanWorld"

    const-string v4, "getLoanWorld()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mBabooshkaChannel"

    const-string v4, "getMBabooshkaChannel()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    const-class v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "channel"

    const-string v4, "<v#0>"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 74
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "magic_otp"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->magicOtp$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 75
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "static_offline"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->staticOffLine$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 76
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "SHOW_ONE_IDENTIFIER"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->existsOneIdentifier$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 77
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "ccw"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 78
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v2, "lwk"

    invoke-virtual {v0, p0, v2, v1}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->loanWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    .line 79
    sget-object v0, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->INSTANCE:Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;

    const-string v1, "babooshka_channel"

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lcom/ideomobile/hapoalim/extensions/DelegatePrefs;->preference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaChannel$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    return-void
.end method

.method public static final synthetic access$getMBabooshkaET$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mBabooshkaET"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMBabooshkaLayout$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mBabooshkaLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMISWmRecordSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mISWmRecordSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsBabooshkaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsBabooshkaSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsPreProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsPreProdSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsProdBetaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdBetaSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdSelected:Z

    return p0
.end method

.method public static final synthetic access$getMIsWmCISelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsWmCISelected:Z

    return p0
.end method

.method public static final synthetic access$getMMinionsKeyDialog$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mMinionsKeyDialog:Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;

    return-object p0
.end method

.method public static final synthetic access$getMServerNumberLayout$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mServerNumberLayout:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mServerNumberLayout"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getMStaticSwitch$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "mStaticSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$playVideo(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->playVideo()V

    return-void
.end method

.method public static final synthetic access$setCreditWorld$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setCreditWorld(Z)V

    return-void
.end method

.method public static final synthetic access$setExistsOneIdentifier$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setExistsOneIdentifier(Z)V

    return-void
.end method

.method public static final synthetic access$setLoanWorld$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setLoanWorld(Z)V

    return-void
.end method

.method public static final synthetic access$setMISWmRecordSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mISWmRecordSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsBabooshkaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsBabooshkaSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsPreProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsPreProdSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsProdBetaSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdBetaSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsProdSelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsProdSelected:Z

    return-void
.end method

.method public static final synthetic access$setMIsWmCISelected$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIsWmCISelected:Z

    return-void
.end method

.method public static final synthetic access$setMMinionsKeyDialog$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mMinionsKeyDialog:Lcom/ideomobile/hapoalim/features/minions/MinionsKeyDialog;

    return-void
.end method

.method public static final synthetic access$setMagicOtp$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setMagicOtp(Z)V

    return-void
.end method

.method public static final synthetic access$setStaticOffLine$p(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setStaticOffLine(Z)V

    return-void
.end method

.method private final getMBabooshkaChannel()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaChannel$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final initServerList(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "prod"

    const-string v2, "wiremock"

    .line 330
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 331
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080338

    const-string v3, "1"

    const-string v4, "Prod"

    const-string v6, "https://iphone.bankhapoalim.co.il/"

    const-string v7, "https://static.bankhapoalim.co.il/"

    const-string v8, "prod"

    const-string v9, "https://gphone.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f080332

    const-string v11, "2"

    const-string v12, "Prod Beta"

    const-string v14, "https://iphone.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "prod beta"

    const-string v17, "https://gphone.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080333

    const-string v3, "3"

    const-string v4, "Pre Prod"

    const-string v6, "https://iphonepre.bankhapoalim.co.il/"

    const-string v7, "https://staticpre.bankhapoalim.co.il/"

    const-string v8, "pre prod"

    const-string v9, "https://gphonepre.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f080337

    const-string v11, "4"

    const-string v12, "Mob1"

    const-string v14, "https://mob1.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "mob1"

    const-string v17, "https://gphone1.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080335

    const-string v3, "5"

    const-string v4, "Mob2"

    const-string v6, "https://mob2.bankhapoalim.co.il/"

    const-string v7, "https://static.bankhapoalim.co.il/"

    const-string v8, "mob2"

    const-string v9, "https://gphone2.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f080336

    const-string v11, "6"

    const-string v12, "Mob3"

    const-string v14, "https://mob3.bankhapoalim.co.il/"

    const-string v15, "https://static.bankhapoalim.co.il/"

    const-string v16, "mob3"

    const-string v17, "https://gphone3.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080083

    const-string v3, "7"

    const-string v4, "BABOOSHKA"

    const-string v6, "http://babooshka/account3/baboocha-"

    const-string v7, "https://static.bankhapoalim.co.il/"

    const-string v8, "babooshka"

    const-string v9, "https://gphone3.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_0
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v13, 0x7f080337

    const-string v11, "8"

    const-string v12, "WM_CI"

    const-string v14, "https://10.0.2.2:port/"

    const-string v15, "https://10.0.2.2:port/"

    const-string v16, "wiremock"

    const-string v17, "https://gphone1.bankhapoalim.co.il/"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    const v5, 0x7f080335

    const-string v3, "9"

    const-string v4, "WM_RECORD"

    const-string v6, "https://10.0.2.2:1111/"

    const-string v7, "https://10.0.2.2:2222/"

    const-string v8, "wiremock"

    const-string v9, "https://gphone2.bankhapoalim.co.il/"

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final playVideo()V
    .locals 5

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/raw/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    const-string v2, "mVideoList"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget v4, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Uri.parse(videoPath)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->uri:Landroid/net/Uri;

    .line 347
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 348
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 349
    iget v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    goto :goto_0

    .line 352
    :cond_0
    iget v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mIndexVideo:I

    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string v0, "uri"

    .line 347
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    .line 345
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final setCreditWorld(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->creditWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setExistsOneIdentifier(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->existsOneIdentifier$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setLoanWorld(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->loanWorld$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setMagicOtp(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->magicOtp$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setStaticOffLine(Z)V
    .locals 3

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->staticOffLine$delegate:Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;

    sget-object v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/ideomobile/hapoalim/extensions/PreferencesExtension;->setValue(Landroid/content/Context;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onCreate(Landroid/app/Activity;)V

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0294

    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0b00e5

    .line 86
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.babooshkaET)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    const p1, 0x7f0b0e53

    .line 87
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.serverNumberET)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    const p1, 0x7f0b00e6

    .line 88
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.babooshkaLayout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0b09de

    .line 89
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.mOtpSwitch)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0b09df

    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.mStaticSwitch)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0b0e54

    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.serverNumberLayout)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mServerNumberLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0b0f54

    .line 92
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.switchPasswordOnly)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mPasswordOnlySwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0b0f51

    .line 93
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.switchCreditWorld)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const p1, 0x7f0b0f52

    .line 94
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.switchLoanWorld)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    iput-object p1, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mLoanWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const/4 p1, 0x1

    .line 96
    invoke-direct {p0, p1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setMagicOtp(Z)V

    .line 97
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const/4 v1, 0x0

    const-string v2, "mOtpSwitch"

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mOtpSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$1;

    invoke-direct {v4, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$1;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v0, v2, v4}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setStaticOffLine(Z)V

    .line 103
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const-string v4, "mStaticSwitch"

    if-eqz v2, :cond_b

    invoke-virtual {v2, v0}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 104
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mStaticSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$2;

    invoke-direct {v5, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$2;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4, v5}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    sget v2, Lcom/ideomobile/hapoalim/R$id;->btnKeysDialog:I

    invoke-virtual {p0, v2}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v2}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v2

    .line 120
    sget-object v4, Lcom/poalim/networkmanager/Constants;->BUTTON_DURATION:Ljava/lang/Long;

    const-string v5, "Constants.BUTTON_DURATION"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    .line 121
    new-instance v4, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$3;

    invoke-direct {v4, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$3;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 129
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setExistsOneIdentifier(Z)V

    .line 130
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mPasswordOnlySwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const-string v4, "mPasswordOnlySwitch"

    if-eqz v2, :cond_9

    invoke-virtual {v2, v0}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 131
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mPasswordOnlySwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$4;

    invoke-direct {v5, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$4;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4, v5}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setCreditWorld(Z)V

    .line 136
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const-string v4, "mCreditWorldSwitch"

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 137
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mCreditWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$5;

    invoke-direct {v5, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$5;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v2, v4, v5}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->setLoanWorld(Z)V

    .line 142
    iget-object v2, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mLoanWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    const-string v4, "mLoanWorldSwitch"

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mLoanWorldSwitch:Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$6;

    invoke-direct {v3, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$6;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/poalim/utils/widgets/SmallAnimatedSwitchButton;->setOnCheckedChangeListener(Landroidx/lifecycle/Lifecycle;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mBabooshkaET:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->getMBabooshkaChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "me5"

    const-string v1, "me1"

    const-string v2, "me2"

    const-string v3, "me3"

    .line 149
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->mVideoList:Ljava/util/ArrayList;

    .line 150
    sget v0, Lcom/ideomobile/hapoalim/R$id;->video_path:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$7;

    invoke-direct {v1, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$7;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 154
    invoke-direct {p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->playVideo()V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-direct {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->initServerList(Ljava/util/ArrayList;)V

    .line 161
    new-instance v1, Lcom/ideomobile/hapoalim/features/minions/MinionSpinnerAdapter;

    const v2, 0x7f0e02a8

    invoke-direct {v1, p0, v2, v0}, Lcom/ideomobile/hapoalim/features/minions/MinionSpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    const v2, 0x109000a

    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 171
    sget v2, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v2}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const-string v3, "server_list"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 174
    sget v1, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$8;

    invoke-direct {v2, p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$8;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 226
    sget v1, Lcom/ideomobile/hapoalim/R$id;->pre_splash_next:I

    invoke-virtual {p0, v1}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v2, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$9;

    invoke-direct {v2, p0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity$onCreate$9;-><init>(Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;

    .line 322
    invoke-virtual {v1}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;->getServerName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toLowerCase()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "prod"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    sget v0, Lcom/ideomobile/hapoalim/R$id;->server_list:I

    invoke-virtual {p0, v0}, Lcom/ideomobile/hapoalim/features/minions/PreSplashActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/ideomobile/hapoalim/features/minions/ServerEnvironment;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 322
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p1, "mBabooshkaET"

    .line 147
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected synthetic onDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onDestroy(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected synthetic onPause()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onPause(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected synthetic onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onPostCreate(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected synthetic onPostResume()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onPostResume(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    return-void
.end method

.method protected synthetic onRestart()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onRestart(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method protected synthetic onResume()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onResume(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected synthetic onStart()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onStart(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method protected synthetic onStop()V
    .locals 0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->onStop(Landroid/app/Activity;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
