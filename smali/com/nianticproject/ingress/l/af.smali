.class final Lcom/nianticproject/ingress/l/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/l/ab;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/l/ae;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/l/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/nianticproject/ingress/l/af;->a:Lcom/nianticproject/ingress/l/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/l/ae;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/l/af;-><init>(Lcom/nianticproject/ingress/l/ae;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 758
    iget-object v0, p0, Lcom/nianticproject/ingress/l/af;->a:Lcom/nianticproject/ingress/l/ae;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/ae;->a(Lcom/nianticproject/ingress/l/ae;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/nianticproject/ingress/l/af;->a:Lcom/nianticproject/ingress/l/ae;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/l/ae;->a(Lcom/nianticproject/ingress/l/ae;F)F

    .line 761
    :cond_0
    return-void
.end method
