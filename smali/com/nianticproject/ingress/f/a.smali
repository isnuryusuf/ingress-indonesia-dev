.class public final Lcom/nianticproject/ingress/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field private d:Lcom/nianticproject/ingress/f/b;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/nianticproject/ingress/f/a;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/nianticproject/ingress/f/a;->b:Ljava/lang/String;

    .line 44
    iput-wide p3, p0, Lcom/nianticproject/ingress/f/a;->c:J

    .line 45
    sget-object v0, Lcom/nianticproject/ingress/f/b;->a:Lcom/nianticproject/ingress/f/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/a;->d:Lcom/nianticproject/ingress/f/b;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/f/a;->e:I

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/f/b;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/f/a;->d:Lcom/nianticproject/ingress/f/b;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/nianticproject/ingress/f/a;->e:I

    .line 59
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/f/b;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/f/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/f/a;->d:Lcom/nianticproject/ingress/f/b;

    .line 51
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/nianticproject/ingress/f/a;->e:I

    return v0
.end method
