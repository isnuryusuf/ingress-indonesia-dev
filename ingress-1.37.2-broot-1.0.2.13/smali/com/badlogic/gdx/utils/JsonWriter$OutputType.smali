.class public final enum Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/utils/JsonWriter$OutputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public static final enum javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field private static javascriptPattern:Ljava/util/regex/Pattern;

.field public static final enum json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public static final enum minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field private static minimalPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string/jumbo v1, "json"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 156
    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string/jumbo v1, "javascript"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 158
    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string/jumbo v1, "minimal"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 152
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->$VALUES:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 160
    const-string/jumbo v0, "[a-zA-Z_$][a-zA-Z_$0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascriptPattern:Ljava/util/regex/Pattern;

    .line 161
    const-string/jumbo v0, "[a-zA-Z0-9_$][^:}\\], ]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimalPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .locals 1
    .parameter

    .prologue
    .line 152
    const-class v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->$VALUES:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-object v0
.end method


# virtual methods
.method public final quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x22

    .line 171
    const-string/jumbo v0, "\\"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$1;->$SwitchMap$com$badlogic$gdx$utils$JsonWriter$OutputType:[I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_1
    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascriptPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final quoteValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 164
    const-string/jumbo v0, "\\"

    const-string/jumbo v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-ne p0, v1, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimalPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
