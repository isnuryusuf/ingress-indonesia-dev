.class final Lcom/nianticproject/ingress/common/missions/tutorial/aa;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/x;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/x;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/aa;->a:Lcom/nianticproject/ingress/common/missions/tutorial/x;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Step"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "TransitionState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 89
    iput p2, p0, Lcom/nianticproject/ingress/common/missions/tutorial/aa;->b:I

    .line 90
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/aa;->a:Lcom/nianticproject/ingress/common/missions/tutorial/x;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->a(Lcom/nianticproject/ingress/common/missions/tutorial/x;)Lcom/nianticproject/ingress/common/missions/tutorial/r;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/aa;->b:I

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/r;->a(I)V

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/aa;->a:Lcom/nianticproject/ingress/common/missions/tutorial/x;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->b(Lcom/nianticproject/ingress/common/missions/tutorial/x;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/missions/tutorial/x;->d()Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 96
    return-void
.end method
