.class final Lcom/nianticproject/ingress/common/x/k;
.super Lcom/nianticproject/ingress/common/x/m;
.source "SourceFile"


# instance fields
.field private final e:Lcom/nianticproject/ingress/common/x/f;

.field private f:Lcom/nianticproject/ingress/common/x/f;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/x/f;JJJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/nianticproject/ingress/common/x/m;-><init>(JJ)V

    .line 117
    iput-object p2, p0, Lcom/nianticproject/ingress/common/x/k;->e:Lcom/nianticproject/ingress/common/x/f;

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/k;->e:Lcom/nianticproject/ingress/common/x/f;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x/k;->f:Lcom/nianticproject/ingress/common/x/f;

    .line 120
    new-instance v0, Lcom/nianticproject/ingress/common/x/l;

    invoke-direct {v0, p0, p1, p7, p8}, Lcom/nianticproject/ingress/common/x/l;-><init>(Lcom/nianticproject/ingress/common/x/k;Lcom/nianticproject/ingress/common/x/i;J)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x/k;->a:Lcom/nianticproject/ingress/common/x/f;

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/x/k;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/k;->f:Lcom/nianticproject/ingress/common/x/f;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/x/k;Lcom/nianticproject/ingress/common/x/f;)Lcom/nianticproject/ingress/common/x/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/nianticproject/ingress/common/x/k;->f:Lcom/nianticproject/ingress/common/x/f;

    return-object p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/x/k;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/k;->e:Lcom/nianticproject/ingress/common/x/f;

    return-object v0
.end method
