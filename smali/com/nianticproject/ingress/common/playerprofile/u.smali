.class final Lcom/nianticproject/ingress/common/playerprofile/u;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/AvatarView;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/u;->a:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "AvatarView"

    return-object v0
.end method

.method public final a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/u;->a:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(I)V

    .line 100
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/u;->a:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 105
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/ai;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/u;->a:Lcom/nianticproject/ingress/common/playerprofile/AvatarView;

    invoke-virtual {v0, p2}, Lcom/nianticproject/ingress/common/playerprofile/AvatarView;->a(Lcom/nianticproject/ingress/shared/ai;)V

    .line 95
    return-void
.end method
