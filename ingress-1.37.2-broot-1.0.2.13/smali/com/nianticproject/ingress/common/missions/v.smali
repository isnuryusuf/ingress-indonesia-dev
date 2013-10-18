.class final Lcom/nianticproject/ingress/common/missions/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cs;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/v;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/missions/cr;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/v;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a;->e()Lcom/nianticproject/ingress/common/missions/aa;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/v;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/aa;->c:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v1, p1, v0}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/missions/cr;Lcom/nianticproject/ingress/common/c/bs;)V

    .line 239
    return-void
.end method
