.class final Lcom/nianticproject/ingress/common/missions/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/elements/o;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/an;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/an;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ao;->a:Lcom/nianticproject/ingress/common/missions/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ao;->a:Lcom/nianticproject/ingress/common/missions/an;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/an;->c:Lcom/nianticproject/ingress/common/missions/af;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/af;->b(Lcom/nianticproject/ingress/common/missions/af;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/missions/cc;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->c(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 411
    return-void
.end method
