.class public Lorg/codehaus/jackson/util/DefaultPrettyPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/PrettyPrinter;


# instance fields
.field protected _arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

.field protected _nesting:I

.field protected _objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

.field protected _spacesInObjectEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    .line 32
    new-instance v0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;

    invoke-direct {v0}, Lorg/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 57
    return-void
.end method


# virtual methods
.method public beforeArrayValues(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 168
    return-void
.end method

.method public beforeObjectEntries(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 99
    return-void
.end method

.method public writeArrayValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter

    .prologue
    .line 183
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 184
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 185
    return-void
.end method

.method public writeEndArray(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 194
    :cond_0
    if-lez p2, :cond_1

    .line 195
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 199
    :goto_0
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 200
    return-void

    .line 197
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeEndObject(Lorg/codehaus/jackson/JsonGenerator;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 145
    :cond_0
    if-lez p2, :cond_1

    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 150
    :goto_0
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 151
    return-void

    .line 148
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeObjectEntrySeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 135
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    iget v1, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    invoke-interface {v0, p1, v1}, Lorg/codehaus/jackson/impl/Indenter;->writeIndentation(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 136
    return-void
.end method

.method public writeObjectFieldValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_spacesInObjectEntries:Z

    if-eqz v0, :cond_0

    .line 115
    const-string/jumbo v0, " : "

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    goto :goto_0
.end method

.method public writeRootValueSeparator(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 82
    return-void
.end method

.method public writeStartArray(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_arrayIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 160
    :cond_0
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 161
    return-void
.end method

.method public writeStartObject(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    .line 89
    iget-object v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_objectIndenter:Lorg/codehaus/jackson/impl/Indenter;

    invoke-interface {v0}, Lorg/codehaus/jackson/impl/Indenter;->isInline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/DefaultPrettyPrinter;->_nesting:I

    .line 92
    :cond_0
    return-void
.end method
