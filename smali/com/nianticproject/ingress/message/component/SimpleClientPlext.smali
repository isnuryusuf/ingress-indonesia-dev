.class public Lcom/nianticproject/ingress/message/component/SimpleClientPlext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/message/component/ClientPlext;


# instance fields
.field private final categories:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final markup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final plextType:Lcom/nianticproject/ingress/shared/plext/f;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final team:Lcom/nianticproject/ingress/shared/ai;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->text:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->team:Lcom/nianticproject/ingress/shared/ai;

    .line 108
    iput-object v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->markup:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->plextType:Lcom/nianticproject/ingress/shared/plext/f;

    .line 110
    const/16 v0, -0x2a

    iput v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->categories:I

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/plext/f;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;",
            "Lcom/nianticproject/ingress/shared/ai;",
            "Lcom/nianticproject/ingress/shared/plext/f;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->text:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->markup:Ljava/util/List;

    .line 67
    iput-object p3, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->team:Lcom/nianticproject/ingress/shared/ai;

    .line 68
    iput-object p4, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->plextType:Lcom/nianticproject/ingress/shared/plext/f;

    .line 69
    iput p5, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->categories:I

    .line 70
    return-void
.end method


# virtual methods
.method public getCategories()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->categories:I

    return v0
.end method

.method public getPlext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->markup:Ljava/util/List;

    return-object v0
.end method

.method public getPlextType()Lcom/nianticproject/ingress/shared/plext/f;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->plextType:Lcom/nianticproject/ingress/shared/plext/f;

    return-object v0
.end method

.method public getTeam()Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->team:Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    const-string/jumbo v0, "\'%s\' [%s] for %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->markup:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->text:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;->team:Lcom/nianticproject/ingress/shared/ai;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
