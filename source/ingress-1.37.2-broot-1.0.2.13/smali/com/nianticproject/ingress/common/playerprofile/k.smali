.class public final Lcom/nianticproject/ingress/common/playerprofile/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

.field private b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/nianticproject/ingress/common/playerprofile/j;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 96
    invoke-static {p1}, Lcom/nianticproject/ingress/common/playerprofile/j;->b(Lcom/nianticproject/ingress/common/playerprofile/j;)Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 97
    invoke-static {p1}, Lcom/nianticproject/ingress/common/playerprofile/j;->c(Lcom/nianticproject/ingress/common/playerprofile/j;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->c:Ljava/lang/Integer;

    .line 98
    invoke-static {p1}, Lcom/nianticproject/ingress/common/playerprofile/j;->d(Lcom/nianticproject/ingress/common/playerprofile/j;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->d:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/j;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/k;-><init>(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/playerprofile/j;
    .locals 6

    .prologue
    .line 126
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/j;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->c:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->d:Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/j;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;Ljava/lang/Integer;Ljava/lang/Integer;B)V

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)Lcom/nianticproject/ingress/common/playerprofile/k;
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->a:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 103
    return-object p0
.end method

.method public final a(Ljava/lang/Integer;)Lcom/nianticproject/ingress/common/playerprofile/k;
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->c:Ljava/lang/Integer;

    .line 113
    return-object p0
.end method

.method public final b(Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;)Lcom/nianticproject/ingress/common/playerprofile/k;
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->b:Lcom/nianticproject/ingress/shared/playerprofile/AvatarLayerOption;

    .line 108
    return-object p0
.end method

.method public final b(Ljava/lang/Integer;)Lcom/nianticproject/ingress/common/playerprofile/k;
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/k;->d:Ljava/lang/Integer;

    .line 118
    return-object p0
.end method
