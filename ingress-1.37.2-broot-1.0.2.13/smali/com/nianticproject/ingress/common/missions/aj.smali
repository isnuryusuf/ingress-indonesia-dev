.class final Lcom/nianticproject/ingress/common/missions/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/common/w/d;

.field final synthetic c:Lcom/nianticproject/ingress/common/missions/af;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/af;Ljava/lang/String;Lcom/nianticproject/ingress/common/w/d;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/aj;->c:Lcom/nianticproject/ingress/common/missions/af;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/aj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/aj;->b:Lcom/nianticproject/ingress/common/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aj;->c:Lcom/nianticproject/ingress/common/missions/af;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/aj;->c:Lcom/nianticproject/ingress/common/missions/af;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/af;->a(Lcom/nianticproject/ingress/common/missions/af;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/aj;->b:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 243
    return-void
.end method
