.class final Lcom/nianticproject/ingress/common/missions/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/af;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/af;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ak;->a:Lcom/nianticproject/ingress/common/missions/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ak;->a:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/af;->p:Lcom/nianticproject/ingress/common/ui/elements/i;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/elements/n;->a:Lcom/nianticproject/ingress/common/ui/elements/n;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/i;->a(Lcom/nianticproject/ingress/common/ui/elements/n;)V

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string/jumbo v0, "hideButterBar"

    return-object v0
.end method
