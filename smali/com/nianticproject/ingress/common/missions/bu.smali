.class final Lcom/nianticproject/ingress/common/missions/bu;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/ch;

.field final synthetic b:Lcom/nianticproject/ingress/common/missions/bp;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/missions/ch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bu;->b:Lcom/nianticproject/ingress/common/missions/bp;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/bu;->a:Lcom/nianticproject/ingress/common/missions/ch;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const-string/jumbo v0, "MissionController:listener"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 1
    .parameter

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bu;->b:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->c(Lcom/nianticproject/ingress/common/missions/bp;)Lcom/nianticproject/ingress/common/model/m;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/model/m;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 370
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bu;->a:Lcom/nianticproject/ingress/common/missions/ch;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/ch;->c()V

    .line 371
    return-void
.end method
