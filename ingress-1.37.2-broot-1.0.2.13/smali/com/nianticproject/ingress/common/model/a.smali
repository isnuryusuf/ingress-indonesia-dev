.class public Lcom/nianticproject/ingress/common/model/a;
.super Lcom/nianticproject/ingress/common/model/o;
.source "SourceFile"


# static fields
.field private static final b:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final c:Lcom/nianticproject/ingress/common/u/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/model/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/model/a;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/model/d;Lcom/nianticproject/ingress/common/u/q;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/nianticproject/ingress/common/model/o;-><init>(Lcom/nianticproject/ingress/gameentity/f;Ljava/lang/String;Lcom/nianticproject/ingress/common/g/e;Lcom/nianticproject/ingress/common/x/i;Lcom/nianticproject/ingress/common/model/d;)V

    .line 31
    iput-object p6, p0, Lcom/nianticproject/ingress/common/model/a;->c:Lcom/nianticproject/ingress/common/u/q;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/model/a;)Lcom/nianticproject/ingress/common/u/q;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a;->c:Lcom/nianticproject/ingress/common/u/q;

    return-object v0
.end method

.method static synthetic a()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nianticproject/ingress/common/model/a;->b:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method


# virtual methods
.method protected final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/nianticproject/ingress/common/model/b;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/model/b;-><init>(Lcom/nianticproject/ingress/common/model/a;I)V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/model/b;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 57
    return-void
.end method
