.class public Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/plext/a;


# instance fields
.field private final address:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final guid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final latE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final lngE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final plain:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final team:Lcom/nianticproject/ingress/shared/ai;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->plain:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->name:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->address:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->guid:Ljava/lang/String;

    .line 155
    iput v1, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->latE6:I

    .line 156
    iput v1, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->lngE6:I

    .line 157
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    .line 158
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->latE6:I

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->lngE6:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    const-string/jumbo v0, "%s at (%s, %s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->plain:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->latE6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/nianticproject/ingress/shared/plext/PortalMarkupArgSet;->lngE6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
